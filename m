Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B03831C4957
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 00:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727903AbgEDWEE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 18:04:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726338AbgEDWEE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 18:04:04 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35959C061A0F
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 15:04:04 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id x10so174029oie.1
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 15:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HG81CHNe0QI0NTrcW8A+JoCmXNVDbes2uRrDzLgGKZ0=;
        b=awQyZcp56CR+knPRnNk21A1iejTvhrYFLChzm3D8lOIkwo5L29DDqfYpOQLytNd4Wl
         PZ0pw0oGfkICw4vK77z9xVA/P+4bMM/pOOWq1BfkSLu+gukAONxmc7l9395y0J94jMvb
         SEljtLDp8Rd+20G3yKC4Msa9QXUUPbIL3knX4W4l9rYfWcq4mwSz728aHXV8rT09nh1c
         u8+IB2oBb0mo0VcASnfmLUxm6hfZCTP6qL2c5S1/n8o7LSMhCNiQeCXOXjkhI7eaV0R/
         HoJQIi2Tw4NDoVlonxzmj/pbTjhdvw7jZhGkNMRNpDiaoSDvux9z59kPjqqzBXYxli6i
         9WKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HG81CHNe0QI0NTrcW8A+JoCmXNVDbes2uRrDzLgGKZ0=;
        b=N9DVl/w0eAZ0HLLxwMEw38GUMJsk8qJXUJpMayoqlUiU8Uj8oYH2l63pP1yS1xCi1X
         YLguGBQJXoc1hbOgLOeZ+AwIsRKRolDfSOiiAJC3vE3hk1l3JyoZB00ICFPMQJhID4R8
         HSj+2t/w2MYwJCWjTW7vMgLt8UfL6hWL0ytg0+kKcoXgyNTUGR58WB0laa/4uoldirVq
         +4xF8mPrggEn6PIOhmqVOVTEKw7OAaBiZHkPfVsz8hAfrDju2IOVuXZK31b9RO8QV59J
         Ppwx1TnnNBbKZQkELW3Kr1az5fw1Z9uRPP9hCUTAyYKQWOyOWCYgb3tapGLRVX2qxrc0
         mJQQ==
X-Gm-Message-State: AGi0PuYctCmkC/t3wLkCI9kFXeTAGYmYdy2Eryky9Fu3U3IWwNOY0HOo
        1oFSZtbXNghS285QZSom72Juq2gej8C8Yis9+P1WAw==
X-Google-Smtp-Source: APiQypKDHasungWQjMayXhFnYsz3plBUGmQGh5tJ355DQrIPVoVy/eOJEF75X4WbUqO6BDVWSC9QCDmuk+RxO75/Zhw=
X-Received: by 2002:a54:418f:: with SMTP id 15mr374635oiy.69.1588629843284;
 Mon, 04 May 2020 15:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200504202243.5476-1-sibis@codeaurora.org> <20200504202243.5476-8-sibis@codeaurora.org>
In-Reply-To: <20200504202243.5476-8-sibis@codeaurora.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 4 May 2020 15:03:26 -0700
Message-ID: <CAGETcx9=kfuG9WtaSxsDe_SM1Gewbn889eQ--3ui3H_rzm3BRA@mail.gmail.com>
Subject: Re: [PATCH v4 07/12] OPP: Add and export helper to get icc path count
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Nishanth Menon <nm@ti.com>, Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        linux-arm-msm@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, lukasz.luba@arm.com,
        Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 4, 2020 at 1:24 PM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> Add and export 'dev_pm_opp_get_path_count' to get the icc path count
> associated with the device.

This is not related to OPP. You should add this helper function to ICC
framework?

-Saravana
