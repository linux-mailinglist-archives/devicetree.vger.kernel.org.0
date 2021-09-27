Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F29541A36C
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 00:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238008AbhI0W6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 18:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237952AbhI0W6D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 18:58:03 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7916C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:24 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id j11-20020a9d190b000000b00546fac94456so26571304ota.6
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LJ0UkhVUse0owYw0meU2mVKVFJcfpj5Elb4nNJo/rUg=;
        b=U6dcOpMzCitoKbfby6IB2+UU7U/AckDV50+5UbpLQC8KtuZLZ8lqUCfVzWhNGytk4d
         LJ4ElrRBRt9hEn5BLyqGyCnsR8UAOZdLkPKLInohRoIeRSYN3qGmNr2Hbk0wgvB/Mfe9
         w42dNltXmI8U5vtusrxRTcsiS9gjwnTCziwkE8y6pupEyVUf4c3/iPkg9qAC3u8FMVt7
         ET4G8oTG0CAfl1+xNBafMqimLZUp3KjFgMxJasXINF/5LVptSgwX2KAhEsucDRXFSFPr
         WdrncGGZ9RPBlZ/CiWGjKvrJuAeqf/wBuJibgmLHcFofJOPdw+v3gIkjhaRfWGlrAEN3
         7oNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LJ0UkhVUse0owYw0meU2mVKVFJcfpj5Elb4nNJo/rUg=;
        b=pt9w0ykkRE4WMvy4Dqiw5MF24nSsWv2pg3lv4weFGFTELL8oxein6VhK8VDTGvUpqm
         s9TjNpoAOiI3gWdC8uPl1N46vtzW0B1kpH8C+XhcJX2X0J1TRWxNZe0kVxDnk+JovERh
         DMp48e7SXNM7YwITR/+HhyMAm6ps6Gi2Lll+YzM1493DakeLHGGIptha7+4Tu70Mw//3
         9aKWMvtNQe+FX/hG+JUdrpnMUPc39DiQAdQy4a7sdgQZg7ogq1J/AgVKz5MCs/ydXlOp
         NQqNrl1Scr6295A4Z+ZT9QVsqlF75vYOAMftSVk8YU1tmgfvDKN239seeiqHk8b08Umc
         /kuA==
X-Gm-Message-State: AOAM533c9ek3BGq8ngmALNQgMHWFDeQ1cCLAlGdwYsIGYS9WbcYPt3sd
        5zBEmQGyJOpQl81wq/0o4kDxXA==
X-Google-Smtp-Source: ABdhPJyuTVvLBVFtId0sbqAztJopYbSNFfuNroaV6GsQ3dhAD8Sn3wd3fnjgzoj64LglgGhREAT9ZA==
X-Received: by 2002:a9d:74cb:: with SMTP id a11mr2254882otl.45.1632783384302;
        Mon, 27 Sep 2021 15:56:24 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w184sm4231084oie.35.2021.09.27.15.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 15:56:23 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8916-longcheer-l8150: Add missing sensor interrupts
Date:   Mon, 27 Sep 2021 17:56:18 -0500
Message-Id: <163278329750.1522839.12342678140663941056.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210816123544.14027-1-stephan@gerhold.net>
References: <20210816123544.14027-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Aug 2021 14:35:44 +0200, Stephan Gerhold wrote:
> So far there were no interrupts set up for the BMC150 accelerometer
> + magnetometer combo because they were broken for some reason.
> It turns out Longcheer L8150 actually has a BMC156 which is very similar
> to BMC150, but only has an INT2 pin for the accelerometer part.
> 
> This requires some minor changes in the bmc150-accel driver which is now
> supported by using the more correct bosch,bmc156_accel compatible.
> Unfortunately it looks like even INT2 is not functional on most boards
> because the interrupt line is not actually connected to the BMC156.
> However, there are two pads next to the chip that can be shorted
> to make it work if needed.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: msm8916-longcheer-l8150: Add missing sensor interrupts
      commit: 51c7786f5d4201422e076b9a3650e543a61d36da

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
