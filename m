Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBC2D417E2C
	for <lists+devicetree@lfdr.de>; Sat, 25 Sep 2021 01:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344685AbhIXX23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 19:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344636AbhIXX23 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 19:28:29 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96EE7C061613
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 16:26:55 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 77-20020a9d0ed3000000b00546e10e6699so15355302otj.2
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 16:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QaBL9mgrH18wT/kZPzIDoOYW9qBhE7CRSbFs2BsGdMI=;
        b=q6S01e2hMlAvQR7CWmTYUc9az8w9EjtXfJiYIXhRS0PcYn3RZ/UNjHuQoQtz49GpXj
         EQCC+yleN4Ypuo/rVWcvi+IfHG11jUCjpNFQsvbzAYOpHtYFOcLeZc9At5jE1GxpcGVl
         9pxUOkq+YrzfLH2gftkoytbeKjdwuqjfpJJbtk4QiH4QhWjbuTiV49dEkvWaeOjDbAhj
         qkNbh+WzwUul8/YiM4kE4TWTj2XDRF08NqB3UFVd7Pl3wN7xfdnzM8MUnyPXyqQEanwJ
         kq7KXXv5udvwo/+w4LPtjcQtZgDxyTU8CCWUcK9aubTYNsSj3R83DMkJ4OpgQfEdSoeT
         UPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QaBL9mgrH18wT/kZPzIDoOYW9qBhE7CRSbFs2BsGdMI=;
        b=CAqSpx3BLRuUckE8kx/XaRjvsX+WljmBLRw/vFGaJ/pdq8QcyIX8Kl3PpaWEsVCRpP
         1XQly4qvbVFqSu3xi3pX4lyiC0FIwROE+7aIq0zqnOvTBLXiB9Pnpbd4UM9/kHI8MJqK
         b9kQS7oWrR8urC+X5Wzweyhoe5o81M9VapnzoeqG9XsrJcYOxcUowZzXUZ26vHsfA63I
         SU8v7OBCAKGf/2zJP94e1isSPZ6A6jGLZgcj/is7VAD/tX2fKN8ITlCj8hz+pzPbsNa6
         +4ZVglHzjw4ws4zmB0LTIGBpx80b1B/Fy8e/CfEv2QHVFAaujkSm7ulOOgAX71oe5i2V
         QowA==
X-Gm-Message-State: AOAM533/6f33YjcifWbCWmhWizhzkjIfZOjR4yKAE2PHwaNRAP8xTj3T
        qqTo15xA/3aiyolAkuElUYdXCw==
X-Google-Smtp-Source: ABdhPJwKJ6OJGjMq+imsF0+PiNm3JnVxp3DxqbfpZHYtBOVXgkcg3NeQJZ7REXpWrzot3BodPQSO0Q==
X-Received: by 2002:a9d:72db:: with SMTP id d27mr6271691otk.279.1632526015004;
        Fri, 24 Sep 2021 16:26:55 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t21sm1409102otr.13.2021.09.24.16.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 16:26:54 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: pm660: Add reboot mode support
Date:   Fri, 24 Sep 2021 18:26:53 -0500
Message-Id: <163252599406.1220936.12274440544806263057.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210824021918.17271-1-shawn.guo@linaro.org>
References: <20210824021918.17271-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Aug 2021 10:19:18 +0800, Shawn Guo wrote:
> It turns out that the pm660 PON is a GEN2 device.  Update the compatible
> to "qcom,pm8998-pon" and add reboot mode support, so that devices can be
> rebooted into bootloader and recovery mode.  Tested on Xiaomi Redmi Note
> 7 phone.
> 
> While at it, drop the unnecessary newline between 'compatible' and 'reg'
> property.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: pm660: Add reboot mode support
      commit: 36730a8f5f4561d4c3682dd3f310a2dbe6cf23f8

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
