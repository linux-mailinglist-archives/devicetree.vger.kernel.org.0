Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD3467990E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 22:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730410AbfG2UMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 16:12:46 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:38943 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730363AbfG2UMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 16:12:45 -0400
Received: by mail-ot1-f65.google.com with SMTP id r21so57856333otq.6
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 13:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rLtTrMx9bNgV2e5WT+U4GbHrtwL6tZTxsShVYrHD6s8=;
        b=tGszBRzPbi6dD+NRM2bN3t9p9ftDIDFlandOwt8DpUAVkYZ4vU9DgEhnuPtU35uxQ/
         KJflcPgXXlm6X0pPEHjnN6jl2/WiXLYOc8kTsFgZjm52JZb//9cc8NSlJ0h/z9Gntkww
         IHh1MZfFJO8t/jlHNiHPzn2KUh++WFzQaiWc7R7+sEi8mVNA/wgN1EoPKSVvlaWeX9U4
         Cqmw8jl8KuzAg9Pto9YHhmzF1ClROkAaxGZTDhB2AgrMQ6fC9wMp2k2yFzK7yUsFbviP
         jHFwQ0oNY3I0nJ4xOe0eVdhRJm6bn2zkQQhWvisj0JWCFFjM/ME1xtG/G/UGYMcwvYHp
         hFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rLtTrMx9bNgV2e5WT+U4GbHrtwL6tZTxsShVYrHD6s8=;
        b=mX1hljzXnTBiZDSOKIeDG7eew4JNZq4X+mbG+VkcUMy5qTfZj/SO7zY+9XLXRFTKul
         vIqEP0SZbw3u7Rt6uWAhBIFovPVF5J3m+TD23sMs2hfyIIQnqmGgHcZ89Yh8UvWlOR5N
         a6ykVUzx7YrN4gQorimrnkgu0/fn2z5xEpikBX6Y9oqoZxmVoEHhjmsuV+ZrUjwpfez4
         ruU0tZP3LPyCxT5pUwm424fi4Gva5Ta68UJbOyxj7mjLfRlPB1O4B8evWbddwAhFb3cs
         ecd89eYZ+58XskTlRuQZ8Z2QJmd7SmqZF6G9JZjOdRByNaGp1gfGoB4AKdYT64o+CVgd
         AtDg==
X-Gm-Message-State: APjAAAUCQHbq9CWBPQRyYK6kGia1EGxUJzEaM2EjEkxHCWgay9PZpSLD
        imU58Cv8TmMTSu7RruG7erstiJWVvUYcWz5moVF7WA==
X-Google-Smtp-Source: APXvYqyalfL7uKo9yflW1Pyt9NtQK1vzEzGUhuLM63HRXQD3JmtpxZUwdeQTJ4TkIvAAhjMpgK7mWf7IUvOUuGB9nzw=
X-Received: by 2002:a9d:6256:: with SMTP id i22mr4789080otk.139.1564431164859;
 Mon, 29 Jul 2019 13:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190703011020.151615-1-saravanak@google.com> <20190717103220.f7cys267hq23fbsb@vireshk-i7>
 <CAGETcx-tbjVzRKW8D-564zgNOhrA_z-NC1q5U70bhoUDBhp6VA@mail.gmail.com>
 <20190718053746.64drmonk72vwnt4s@vireshk-i7> <CAGETcx_-=b3An9YdxLUnZap=0iaeczvWTEnw65FMLU8BwA3HfQ@mail.gmail.com>
 <20190729092454.6lfqzmhkvrhpimsp@vireshk-i7>
In-Reply-To: <20190729092454.6lfqzmhkvrhpimsp@vireshk-i7>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 29 Jul 2019 13:12:08 -0700
Message-ID: <CAGETcx_7fK20VZ6Zn07Z+Ran1_O7gSPohck_tg-aEr5oONQ5iA@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] Introduce Bandwidth OPPs for interconnect paths
To:     Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        David Dai <daidavid1@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 29, 2019 at 2:24 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 18-07-19, 21:12, Saravana Kannan wrote:
> > On Wed, Jul 17, 2019 at 10:37 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > > I would like
> > > to put this data in the GPU OPP table only. What about putting a
> > > range in the GPU OPP table for the Bandwidth if it can change so much
> > > for the same frequency.
> >
> > I don't think the range is going to work.
>
> Any specific reason for that ?

The next sentence was literally explaining this :) Fine to debate
that, but ignoring that and asking this question is kinda funny.

> > If a GPU is doing purely
> > computational work, it's not unreasonable for it to vote for the
> > lowest bandwidth for any GPU frequency.
>
> I think that is fine, but if the GPU is able to find how much
> bandwidth it needs why can't it just pass that value without needing
> to have another OPP table for the path ?

You were asking this question in the context of "can the GPU OPP just
list all the range of bandwidth it might use per GPU frequency". My point
is that the range would be useless because it would the entire
available bandwidth range (because purely compute work might not need
any bandwidth).

Whereas, what the GPU's algorithm actually needs might be the list of
"useful" bandwidth levels to use.

Also, as we add more ICC request properties, this range idea will not scale.

-Saravana
