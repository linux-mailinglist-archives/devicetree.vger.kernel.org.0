Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FEA3258697
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 06:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgIAEEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 00:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726006AbgIAEEs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 00:04:48 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 565B5C0612FF
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 21:04:48 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id 109so17597otv.3
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 21:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7tF5yri2JrvbpuG08PkKfHvaUZh8WWw0hbP0EluJihY=;
        b=M1WvaDgYP5swmd9Trqsx8z670mDBsLaKq+qcBaK8y2jBn33lZ2hEfjX+tQ+0a4BJwi
         wsXsfhClQG0zZeP+DwK5HhxO4pz9BJFCVypqoT+H1oYoH7FxHMYIbQiDJ71MqDdJXo+a
         24VCN3nmoP531xyuidmBEtfBsqq7AEgXQhrTYOQ6dkkjMe+8abBzlrsDVF2BR9a1Yjp+
         Kn1BA4zk/jS/wqFYTQBvFFeF0Kaaa9E66+oiZ+qSGD6242mh1yt9beKM6hE/r9ClFelO
         XEw+b+rAb8UU0SBQw56hfj+v10dou7juYR8rLQRYGF94Bzk8LEanBjhpSViLpoIJlPeS
         7yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7tF5yri2JrvbpuG08PkKfHvaUZh8WWw0hbP0EluJihY=;
        b=NC1vu+BXL8YEJMimkKdQnocgNq+8mjb0naTMCQChOJrNnXdd2OKoImUvdo/Nydduj8
         1xZcjQP3A7862DvoiX4nhXcLhL0+1k1ePlC4cRlJ7NAiOVZueAFzP+zuDmu0r/ehxlCA
         F2NxZLnXVpQ9K1ff2B0jBYLWMhsyE1b5Hqw/UvH+qml/HB1oGCPs7F+NMZ0TCKl074Pf
         n2scVMQJguBjoMoAVDtDxbKBdloP/kTM594rJNyMf58mguSVHcrJpz7VUVWp6cUQMysQ
         wJslkHR043WkGBqoGuO0CxDirs7ZH2OcCaTIsVnQviXNtiD1GmeTw+8hiEcQK0SI+o18
         LjWg==
X-Gm-Message-State: AOAM533bFt4Fly+bUpmv9Hy+m8PGqSRXqaPo7Dm1kPimHZfIw2AO0VXQ
        gBbPELgG97ZJq082pHmGZlmyQdLNve6wiZhfiNr+dA==
X-Google-Smtp-Source: ABdhPJw58JZ5LU2bTsgeGqMMWY9gbABpuH1aV0WA7Wgxvfh8rLe/Y37yR+nWxMGI9FEU3rLnm6Z5elAOeiqV3NLqrPg=
X-Received: by 2002:a9d:6004:: with SMTP id h4mr51911otj.102.1598933087465;
 Mon, 31 Aug 2020 21:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <1597227730-16477-1-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1597227730-16477-1-git-send-email-rnayak@codeaurora.org>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 31 Aug 2020 21:04:36 -0700
Message-ID: <CALAqxLVQ1uB5Zy1DrFP6K4FgZ0U9rwGterhvzcTws_9O9wWE2g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sdm845: Fixup OPP table for all qup devices
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        Amit Pundir <amit.pundir@linaro.org>, tdas@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 12, 2020 at 3:23 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> This OPP table was based on the clock VDD-FMAX tables seen in
> downstream code, however it turns out the downstream clock
> driver does update these tables based on later/production
> rev of the chip and whats seen in the tables belongs to an
> early engineering rev of the SoC.
> Fix up the OPP tables such that it now matches with the
> production rev of sdm845 SoC.
>
> Fixes: 13cadb34e593 ("arm64: dts: sdm845: Add OPP table for all qup
> devices")
> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Just wanted to follow up on this, as it's still missing from 5.9-rc3
and is needed to fix a bluetooth regression on db845c from 5.9-rc1.

Amit has already validated it (on PocoF1 as well), but just in case its useful:
Tested-by: John Stultz <john.stultz@linaro.org>

thanks
-john
