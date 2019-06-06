Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D59036D52
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 09:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726092AbfFFH2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 03:28:25 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39757 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726040AbfFFH2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 03:28:24 -0400
Received: by mail-pg1-f194.google.com with SMTP id 196so845302pgc.6
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 00:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wlgGUah23eHo/H64Eg2vhNIMKOdELD/2jAr8gZ8yeQU=;
        b=xgJyPAqPTQZeX62olRh83K3Ke3ffKHqMv1bpS9S5d337PQXBguidp4ptbY34d27ykR
         z26bHXnIGUVdK+PKUhSp5n5Ju2s/eRd9xaTuSrgkmYKPEhyATlJU1HjO1Fz8xJJlPMzY
         7HgiNe2MdfUQI7v/VeEfzlrnAG+ot41nbM2VA/D8ruQHDcjUM4RL3eu7o3hJnmU/Njk+
         Yfwz95KWsNd86yaDlRnof9aAuYWvTepDKshPfUbxmegghwf+T0IFdgiZRqE/XRkzR1AR
         9ySCNtojSNV2OwsmESCStvxvAFjfk6nx6eQZknBw983VaBZ3NZl1H2nmQcE4udDMoOdY
         1PUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wlgGUah23eHo/H64Eg2vhNIMKOdELD/2jAr8gZ8yeQU=;
        b=qf4Br6Aii77ElSqDGorV+gxEtwnQREXH1Zyi6Rj0z+En4YoJjJXz8IVFWl1DRpXQU5
         LqdTy1WQlymc/7tZI6fCxqxuT494mmspXjUq+gfOAVYIsmRMW1bud4X1kPtnS9OUr7RX
         QBWqCUGMgBtzq1NhfKbAtSt0Gto3dCf7xy4196YG1jmUwXysi1JI7PP0m4ENLnzX098G
         lJBE555qUKOYPQfBDaYgDTrtZzvL2EiqH7WwBlf9eyWRoaTpALpRDxg6UQhqGXCjyIOK
         R02p9ITCY/A1AOYXaR80C94lu/CvVllttSywj1F5AsQO73mKIq0dAbpqskVJ48B5Pm58
         lGwA==
X-Gm-Message-State: APjAAAWkxGxD5mNLHor3l9yGWvS0lgAaxjA72/QwGb7mtN1JM6IaIcKU
        ojjMBOtlnkpf2SsV7pDGVBC9eA==
X-Google-Smtp-Source: APXvYqz6zJqL/XbGyVJzgha4MZFTRLlOBzg0x9moDaW4qeydL4byuzcJCwGp6LCMIE/HsT5svT82Qw==
X-Received: by 2002:a17:90a:364b:: with SMTP id s69mr51357058pjb.15.1559806104059;
        Thu, 06 Jun 2019 00:28:24 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id x6sm1400490pfx.17.2019.06.06.00.28.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 06 Jun 2019 00:28:23 -0700 (PDT)
Date:   Thu, 6 Jun 2019 00:29:09 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vivek Gautam <vivek.gautam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: Add Dragonboard 845c
Message-ID: <20190606072909.GU22737@tuxbook-pro>
References: <20190606043851.18050-1-bjorn.andersson@linaro.org>
 <CAFp+6iG66C-6ySw81bVsxbWqP+qCza0+QxuQ4Z-MXqB6DV2KZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFp+6iG66C-6ySw81bVsxbWqP+qCza0+QxuQ4Z-MXqB6DV2KZg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 06 Jun 00:26 PDT 2019, Vivek Gautam wrote:

> Hi Bjorn,
> 
> On Thu, Jun 6, 2019 at 10:10 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > This adds an initial dts for the Dragonboard 845. Supported
> > functionality includes Debug UART, UFS, USB-C (peripheral), USB-A
> > (host), microSD-card and Bluetooth.
> >
> > Initializing the SMMU is clearing the mapping used for the splash screen
> > framebuffer, which causes the board to reboot. This can be worked around
> > using:
> >
> >   fastboot oem select-display-panel none
> 
> This works well with your SMR handoff RFC series too?
> 

With the SMR handoff series this is no longer necessary, we can boot the
board with boot splash enabled.

> >
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> 
> Patch looks good, so
> Reviewed-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> 

Thanks,
Bjorn
