Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1903555C93A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240771AbiF0UDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237819AbiF0UDP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:15 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE9519021
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:13 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id r82so5626927oig.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FFCMXjXY5CA+wpxZdZU3Q9TCkvTfbgK66kz1Or5tYrk=;
        b=JT6qU7+CFlyjvn1GwZ9aVAbmmcZo7H+jgOwpHSAGZgTxGnstAVMJ7i4mgmnUqTPlI3
         emsp8831jI07Ta4X4uVYiZu0FW0G1+Ur+cf2wWX/ANz+iKydsiAaNnkD39TxATETutn4
         CoiuiHm4P4ZPDCEuPVVzCyWtjqr4y0VBnkyJ5Ldff1AUqnAxFG886pc5t8O0uCYGTEjE
         zjU/Zny59+EvS0Zw5NSoC6NOp42wV+E+/s1fRz/DQ2xQKm4IzrTXwQUiKS1rOXrqf6gK
         U8tBYrKe50SoXdWTyRtIuhL/q+M9TcOADqZc7EIcY+x6tyeAPKD71szJjAet1xTE3w9+
         HU1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FFCMXjXY5CA+wpxZdZU3Q9TCkvTfbgK66kz1Or5tYrk=;
        b=Yf/xX/EZS2XXehUmv/u+qZJv6MEmTALHGI7NxHluFq8KPRSjBAwEesxRnFcMSHoHAx
         JyoGTdgWH+G0/ImoTOS07KvREtxic+5fyt49jbcwYMVMssXE3hEbjti9M0po+0qGUWfv
         ilAU36roOdsNhRTtJYr+ZK9pSHTXt6cM5fwtaHPT/9ypk5/N3IuQoPqERpR/g9BH/xjH
         RuDg8mWddT/FmFon3A72mVo3mtcx6wFLfjerYqt6kPUVGTonW6gilfdUYXWWRJ9yUPM4
         H4D1Z81joX+J6LqTizReU9baNDEyPKXTY/S+KXWwnRZvFxC4qVTjqIEQ5mB/gUEtZAvb
         WuoQ==
X-Gm-Message-State: AJIora/RRI9qDe9XgG88TF4VHiUkgGj3C5DP9w1KysU+0eEkloJpiXXU
        RxwDUfmsg7XtcJl7J9nSh/b4Gw==
X-Google-Smtp-Source: AGRyM1scSt7+Wsgm6JxzcsPK1MS1SIw6jYVQBmyq7W144MG/hOju2sP8g+cHD1deDeH3rdDDZFqSYQ==
X-Received: by 2002:aca:bb56:0:b0:32f:2160:bfd8 with SMTP id l83-20020acabb56000000b0032f2160bfd8mr9345061oif.92.1656360193222;
        Mon, 27 Jun 2022 13:03:13 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:12 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dang Huynh <danct12@riseup.net>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sdm660-xiaomi-lavender: Configure WLED
Date:   Mon, 27 Jun 2022 15:02:35 -0500
Message-Id: <165636016347.3080661.7229765729072717301.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220425032824.211975-1-danct12@riseup.net>
References: <20220425032824.211975-1-danct12@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Apr 2022 10:28:24 +0700, Dang Huynh wrote:
> WLED is used for controlling display backlight on this phone.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm660-xiaomi-lavender: Configure WLED
      commit: b74f7b8f174f0ce2261cc05050dcbfed3314ab1e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
