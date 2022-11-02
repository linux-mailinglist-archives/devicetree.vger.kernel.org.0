Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E0FC61645A
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 15:04:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbiKBOD7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 10:03:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbiKBOD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 10:03:57 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BA49BC8
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 07:03:54 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id u7so12463642qvn.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 07:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pywIRCPuC2MFbuylTPqRj5zD/GzM0s7PD59oXY9A6TY=;
        b=Fv3BR0IWU6Mu64TYqH1aeAggacF0YoDIO1TF9/HD5YQsLgVwmeetHc2Q0UZJblS6vQ
         GdeznqYKMJJCwU36X7ujN2vVL/o+AnibDLoucDXu2nJou1ttPPuVk/73xQyQ1uEfjwe1
         Gcx5cM+VcnWwmC1r/74VgXk04nxgdicOLtEy5VwKo/4oLu5w7kkm81fSmZFehyrNmHKO
         CxYfIXX2XSJrr4Sv8dzqB4Q3XdMNCiTPmYBRO3uNhaLG09FK+hFTNfVd2wYdqD4aZXzr
         2wCq1cFMVRzMnNA9R/+zD0nFUZ/BdGY0itltb78MbFXAv79VzZOXltD7Ve4K3sFIPts2
         B0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pywIRCPuC2MFbuylTPqRj5zD/GzM0s7PD59oXY9A6TY=;
        b=MPWoxWTb/oAhyYNXekYdf+Frrdz+5HezISkR5tiJwIdpNU3OS46Eh7Q7mMTJPM/r3e
         /R93ELQfMF9nrEsN86Tmg2Hnn8FPrIwF5pjhF0pHUUNofzuf44WfMmcLYmeAjB+5R+uf
         mxnviBw1vl3wpt3WCFiBB14Ws7jJLYfCcgOQokFJ3JCIcelYPaM/H7LkBybESs8xlVEu
         8ZUsxiJqpbVSWX/cYLsOZVLMfXubSKcCHIVEU06BCeWmT3TIxsqq9POlBAFjvnZDVG8Y
         HLvIk97eMItRQU/mScK1WdHoH7huApvyxhApLzYnfWfuM1+klPgAENkjxBrvE0vdpkLM
         jzxw==
X-Gm-Message-State: ACrzQf0JQPcuxLoTucvDcomqx4yDWyi2iQmkJeIw61JbipYk+AH2UH56
        7A7PI1we/XkqnP2LpYqZVtKVBA==
X-Google-Smtp-Source: AMsMyM6VJAYZR7opShbPCFk8B4tgC5r7eMS47AqJmXIMeK1P1Z1U3UOf03hUYsPeHopf1Hl5a1e86Q==
X-Received: by 2002:a05:6214:1cc2:b0:4bb:c676:5bda with SMTP id g2-20020a0562141cc200b004bbc6765bdamr20120695qvd.0.1667397833691;
        Wed, 02 Nov 2022 07:03:53 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bn5-20020a05620a2ac500b006bb78d095c5sm7533392qkb.79.2022.11.02.07.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 07:03:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        "B. Niedermayr" <benedikt.niedermayr@siemens.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        tony@atomide.com, rogerq@kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v9 0/2] gpmc wait pin additions
Date:   Wed,  2 Nov 2022 10:03:50 -0400
Message-Id: <166739782624.6087.4220604389047260115.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102133047.1654449-1-benedikt.niedermayr@siemens.com>
References: <20221102133047.1654449-1-benedikt.niedermayr@siemens.com>
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

On Wed, 2 Nov 2022 14:30:45 +0100, B. Niedermayr wrote:
> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> 
> Currently it is not possible to configure the WAIT0PINPOLARITY and
> WAIT1PINPOLARITY bits of the GPMC_CONFIG register directly via
> device tree properties.
> 
> It is also not possible to use the same wait-pin for different
> cs-regions.
> 
> [...]

Applied, thanks!

[1/2] memory: omap-gpmc: wait pin additions
      https://git.kernel.org/krzk/linux-mem-ctrl/c/89aed3cd5cb951113b766cddd9c2df43cfbdafd5
[2/2] dt-bindings: memory-controllers: gpmc-child: add wait-pin polarity
      https://git.kernel.org/krzk/linux-mem-ctrl/c/1f1e46b83b7db08c8db31816c857e27da84d4ca3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
