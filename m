Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B084650CC20
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 18:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236294AbiDWQGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 12:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236280AbiDWQGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 12:06:45 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E0752B31
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 09:03:48 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-e5e433d66dso11762992fac.5
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 09:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h8PXDVWhKSWBJ0C2lTa3ybMUBrdTmN9u1QzT/Ihk3Pk=;
        b=nP0ktGxiJzcu0Clehe5GCxRzS2iKxF48fxVgutSfIYOUswhkoQQVHsJy/YrznvUhIs
         BMzo/fVq7L1AlUpI4B4rUb1BqRTBpfcVnrIM30czanR61YO671Q0hPAI+s6dgLLJ/sw7
         L/kyYpB+5dTfqfw/J7JdZsx1OwHC3eWkcUqOODNj23DDTWc7DILTpjvKpxv1aH9NK8+l
         5hJXkEHPJZKBw71PPLwvTlXE0LGLihgzpcx2HgtZLy28Fl1qHns9F6OtpKz7/hrNIjJ1
         fbWIpcHfk+fTchwO6egooikNX5YUoqvjpeVmynlgz7FFJ6ygG9NXkYXjERfl9KZ4max7
         8WLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h8PXDVWhKSWBJ0C2lTa3ybMUBrdTmN9u1QzT/Ihk3Pk=;
        b=uler8EK9sE/5UeaVoFtEphgba25x9yqg+LAZRNH+3UK4lA795QcsBS9kRb0UMmOz9d
         rwpDqiZbISq+G3TCR2nngeaADYMGBhFod6izYwSqpDV6cHTIWfAhf48dHjUjerEA4d8x
         0zl/1exscqnJQ7/ELF7l8f6oyNzTrgSDNAOGN8bB6wLnx/ZCqiZa3znW8Pz+lqr6eYHz
         zy9qMJVjdJHkto99hYfqG/jmjwwjgscr3iecrg28huAHWGd0lSboHzGHgycmJJgz1iOC
         wBaDBTDPE+ciq86HCYW+yWFHqlnDrs6WVnvVvhPUgDj/KndMUep6/FxySJANOdfGC9G6
         qybg==
X-Gm-Message-State: AOAM530THWKgdqWuSjjnZdXySxeHn2CUfQWpN2CTuEhzwn2nhBdJHWD2
        9MrvbeJKk8F2eMJvequmQ9NUNA==
X-Google-Smtp-Source: ABdhPJyfoXu/6v5iR7R2/jWDr/7XAZoB+zpsxrUBkKAVnoaBYOT0r3a7pCIcYsGHGuHEn8JXNwum5A==
X-Received: by 2002:a05:6870:33a5:b0:dd:f6e6:7837 with SMTP id w37-20020a05687033a500b000ddf6e67837mr3879028oae.154.1650729827416;
        Sat, 23 Apr 2022 09:03:47 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id c9-20020a4a8ec9000000b0032438ba79b0sm2123856ool.0.2022.04.23.09.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 09:03:46 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     robh+dt@kernel.org, agross@kernel.org,
        Rob Herring <robh@kernel.org>, bhupesh.linux@gmail.com,
        vkoul@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 4/4] arm64: dts: qcom: sm8450: Fix qmp phy node (use phy@ instead of lanes@)
Date:   Sat, 23 Apr 2022 11:03:43 -0500
Message-Id: <165072980563.2810336.17249658876538804302.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220418205509.1102109-5-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org> <20220418205509.1102109-5-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Apr 2022 02:25:09 +0530, Bhupesh Sharma wrote:
> Fix the following 'make dtbs_check' warning(s) by
> using phy@ instead of lanes@:
> arch/arm64/boot/dts/qcom/sm8450-hdk.dtb: phy@1c0f000: 'lanes@1c0e000'
>   does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[4/4] arm64: dts: qcom: sm8450: Fix qmp phy node (use phy@ instead of lanes@)
      commit: 2a31f958f8326c263f2af2511cd6d8256d81e810

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
