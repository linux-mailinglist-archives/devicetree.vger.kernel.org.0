Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9784564486
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbiGCD7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232487AbiGCD7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:19 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E7F1D116
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:49 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id y77so8957922oia.3
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UW9H/IvY4Tfy1rI+Le9eCT3S6ebQsX4xHDT5O7cGn+s=;
        b=Cns5stWkIRjHv4iUvWpMAL7XO4hCJgbx/+tkCya5nQgCdPM9RU30V4ZUWNJiM1e5n2
         zIePot0t50Z3OnbRlAc+CzDlEKwWfsuwkMKtmdBXdGTTAkwOhK7XPltyL3p1fIN3fVfV
         jQ7eXu2UCmiIhMa93BQhlnEYmsS5a6YUU3CHFwov1oyLpa0WWMAwAIapxF+PAfBiuvGE
         cXAgl5DaISV0vRa4LTEkfie55ltAokIRYVgPx33J47on/Ke/5RLOwwHqFxn7DAQayDRS
         4y+ysZtKmFUZYR0mKrGz4g9SL5rGohUSGGH4HDzelVAn57YMI3WwwB4vC3dE1KfOiF44
         nLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UW9H/IvY4Tfy1rI+Le9eCT3S6ebQsX4xHDT5O7cGn+s=;
        b=rBx1t3n2A2Graq0xl5MnQzBCUur1Om3OGK+ZQVQjo5QK3daf7HtQs493Y1G072njp7
         /Yb2CLThyt1QBDv947mbn678tPmhD2gSLD8Txfqo+zBpXpC3R/stXBHxWuhLZQ3zYTAf
         A2mcMkJqR9v7Q3MXbzfnNHyMCRW9BJBl/uzRe89G9b0dX0rbKAQ2ld4cL5ycEpP+Hga5
         YrXzlo1urybEQrcFnFgtI9S7vpax5ykSleUGCLbRLNytT+yd0KEvxvmDNNu83kRyo0Lv
         DiZFziq8sdLymfpFEhbqZG8YhfFuS39ZaeWXUcZUdgzFfQZIixpyzpaUS483XUkDztpd
         xYgQ==
X-Gm-Message-State: AJIora9qp2IkqONUVmABxemcBD6TMKU+Uw0ENaYFHphDIc0fTnso66v9
        akzl+jhaNA1uJkDLBBYuRg1HYg==
X-Google-Smtp-Source: AGRyM1szLI9Z+uzAlXXOZciKArG1ZkzMdcd+g23VdWmuU5B88JfUFhf8WzQj3+a3VAT0XSwIaMLUew==
X-Received: by 2002:a05:6808:ec1:b0:331:4236:242c with SMTP id q1-20020a0568080ec100b003314236242cmr13118751oiv.19.1656820669023;
        Sat, 02 Jul 2022 20:57:49 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:48 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     jic23@kernel.org, Markuss Broks <markuss.broks@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Song Qiang <songqiang1304521@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org,
        Lars-Peter Clausen <lars@metafoo.de>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: (subset) [PATCH 5/5] arm64: dts: qcom: msm8998-xperia: Introduce ToF sensor support
Date:   Sat,  2 Jul 2022 22:56:42 -0500
Message-Id: <165682055970.445910.14067306079417059370.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220523175344.5845-6-markuss.broks@gmail.com>
References: <20220523175344.5845-1-markuss.broks@gmail.com> <20220523175344.5845-6-markuss.broks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 May 2022 20:53:44 +0300, Markuss Broks wrote:
> This patch adds device tree support for the VL53L0X ToF sensor
> found on all Yoshino devices.
> 
> 

Applied, thanks!

[5/5] arm64: dts: qcom: msm8998-xperia: Introduce ToF sensor support
      commit: 642f13c32087c29ed907866c7e6765d472e8f457

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
