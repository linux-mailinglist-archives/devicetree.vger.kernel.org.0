Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13344569803
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 04:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234530AbiGGCbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 22:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234853AbiGGCb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 22:31:29 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61E882F3A9
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 19:31:27 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id m24-20020a0568301e7800b00616b5c114d4so13067159otr.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 19:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mn2TTqERHKtJtW4j4xM4WYHLEUWps3HzeA+jdfMJou0=;
        b=NhjXPaidywCMGM0ecCe0WqBYqCCK//iKs/NiheCQ4WFiSDABHWKcLRDElFdPWeK9lX
         hOU/siFB7e4gVQT1y/knXRNLPQMm7O8PAdD7CAcUxxmnCU7Q5v1iBaRD2w18uVnNp602
         nPPCQ+KOiVehQ2aZ61YL/6h4L6gZfaIyCmzyXmLGSj9FHgS5sEsUYARn4OoIKnGYSmLG
         uaYc6hOSF+QjU6l1ZvtE9nJPBBO5Vf5p/LaS7Fb9g9envC4O/d+8XJBtbVSnyjxk6ena
         iQ/4IMspOui4APsqMV5/4QJny7BS/aR03qJQ6tc6rDBzt2OlaL1vEh8FjyRVeduM++oW
         kIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mn2TTqERHKtJtW4j4xM4WYHLEUWps3HzeA+jdfMJou0=;
        b=fbsmUbH7CidX1GmVwNn0mRL6T5PyCmL7E1iyxyFGtQxvtB1XXFD7fvEfM7h1syfVy3
         60vetEEhEdAnOv2hTBviJEgGjaGyHA0Z3hul1+mlogQ7YG4SS/oMX7jhGENfAgUYraWq
         a5xseY0q7ZsWkStaYeUvWv4igr9nGAnpgi8HO+4uQTc3Id3+mAR0eBSyKj9HkqFX2fH7
         wpMwPlY8sgOymj1yhs7mMIT79Mx1wjY4vIddUJxJ6l06Yyk4dbcI+PC45+MFb265ypkT
         DL+64goI4x/5vJRQBEf5hKB76s/4D6A/rvJjHxwfYj033C4olgdpPvK6AmRStC3g6LA2
         Hfxw==
X-Gm-Message-State: AJIora84FFe9ArAR3cp1WlMCSYQs6dTaKXNQn+z2ePa/YwBRLJCMTx1l
        1JRMlwg8sQcv7+UJb1vDUAuJBQ==
X-Google-Smtp-Source: AGRyM1vrodkG/0P+mtaVdMTv0VuqTG9mmdnkIZEvSGqmVhpAuMFGlt+tAdxVozmbcYzVIM6s7jqRZA==
X-Received: by 2002:a05:6830:4188:b0:60b:83f8:e8d0 with SMTP id r8-20020a056830418800b0060b83f8e8d0mr18217007otu.32.1657161086610;
        Wed, 06 Jul 2022 19:31:26 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x48-20020a056830247000b006168c71ca4asm17024469otr.56.2022.07.06.19.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 19:31:26 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Heidelberg <david@ixit.cz>
Cc:     linux-arm-msm@vger.kernel.org, ~okias/devicetree@lists.sr.ht,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v4 1/3] ARM: dts: qcom: extend scm compatible to match dt-schema
Date:   Wed,  6 Jul 2022 21:31:04 -0500
Message-Id: <165716107314.864223.10870115805716028022.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220626183247.142776-1-david@ixit.cz>
References: <20220626183247.142776-1-david@ixit.cz>
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

On Sun, 26 Jun 2022 20:32:45 +0200, David Heidelberg wrote:
> First device specific compatible, then general one.
> 
> 

Applied, thanks!

[1/3] ARM: dts: qcom: extend scm compatible to match dt-schema
      commit: 363c1b04cfce5615f2dc1b7f19e4456937ed2068

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
