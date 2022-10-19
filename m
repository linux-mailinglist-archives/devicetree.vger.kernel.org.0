Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B779B6049D3
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 16:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231510AbiJSOxL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 10:53:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231192AbiJSOw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 10:52:57 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D698D33875
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:44:42 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id o22so10809689qkl.8
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uft2HfJ9ltkOrVs3ehN+metJpGT6DY05hXKKGV7vLt8=;
        b=KfE0L7PnPL7v49M0WWRYcIfCVJxWKq+/hnK3RTxXu1tco6Xvkx1kg23qZ7gNfKvYsy
         gEyJm3HmhXvhgmSLG9jrknPz2ogPFu6jbwHAeuxH2n6UkvqSHvo+b//JxF4i8mLELq+R
         DHD5IqVEFPlWnhD6CnEX47J8uBQx/bhZZAz1Qph5yWJMsQJ/ul+17hLL2B+XLbHSi3Vi
         AVrUsReRewE0+ZYuAXb1GgtW6ZSFznEXtu84lATHQKNR/19BDFEMFysVLm01SlFyp2i4
         ZaoQxBd85NtNuQgOOITG2SUWirTRxcaN9p+kGoG0DeJG92wtus1xVQ/YdwFCX60fU98I
         qCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uft2HfJ9ltkOrVs3ehN+metJpGT6DY05hXKKGV7vLt8=;
        b=tN9vDAZBRS2bYvuBBmo21MgC9v/izN7uiWpCVie/GnbWCz1gNu92H9Hms2TlVkoF2G
         8usB/aIG8cHjqhyQFg9KfB6GmdiSBYCLkjnh7WHATGSt5qUou3PhoIztAEGmL5BgVkzu
         QSr9H7Rrk1JTYEjxMLi26MTgfTIGGEH6q4zxyOfWrG50JRMCC0QDSaUfwq6byFen8EzU
         IRFtZs7gq53N+HxB6CRR+N63HhTlBKmw7WCST5AvZloy6BOCR0vWuJBVRwNeFbiz+XAZ
         Jrxs+s7CrQeePbnyJplDJxuwyVOqZtuvN9updKe4Qy+C4c34Zg3Vkl1rEmoB+amnnYwf
         enKw==
X-Gm-Message-State: ACrzQf06QTG/EJN1Wx+i1ivMyhblaHC3lUgbKX5OSqcOZt8bRDMkYfMu
        GHU6QcxF6q7GuNwkc934uF6YCoI/DmmYBg==
X-Google-Smtp-Source: AMsMyM4S/9EkiiuT/ZoyO/eSQXsqHvKDsS2nIeU+wIMIlcvNFFH0A/x5gkCF3ab4dqHYco320kst0A==
X-Received: by 2002:ae9:f312:0:b0:6ee:ec00:8944 with SMTP id p18-20020ae9f312000000b006eeec008944mr5725974qkg.157.1666190681195;
        Wed, 19 Oct 2022 07:44:41 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id y9-20020a05620a25c900b006ed61f18651sm5211917qko.16.2022.10.19.07.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 07:44:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v3 3/3] dt-bindings: pinctrl: qcom,msm8994: convert to dtschema
Date:   Wed, 19 Oct 2022 10:44:32 -0400
Message-Id: <166619067067.168589.8840780308070666003.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221018155450.39816-3-krzysztof.kozlowski@linaro.org>
References: <20221018155450.39816-1-krzysztof.kozlowski@linaro.org> <20221018155450.39816-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 Oct 2022 11:54:50 -0400, Krzysztof Kozlowski wrote:
> Convert Qualcomm MSM8994 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
> 
> 

Applied, thanks!

[3/3] dt-bindings: pinctrl: qcom,msm8994: convert to dtschema
      https://git.kernel.org/krzk/linux-dt/c/73b8365a75f1810ba7dda73c6721ebdf12851bbc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
