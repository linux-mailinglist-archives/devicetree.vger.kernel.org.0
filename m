Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 024F3627937
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 10:41:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236993AbiKNJlT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 04:41:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237073AbiKNJlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 04:41:03 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C01A1E707
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:40:50 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id be13so18338127lfb.4
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhjMWnbPiyWtnSlNKUPMhCILBSQuKkW5JKpMpkNUhPc=;
        b=xDoUbGyu7xJvnEe64C39u3W1WlMwPR+7xRgCl/wRlulZRVB3Am1KRRuuXYjae3A1EJ
         lVpNipOsRjdFPusE3n6XM7Fqmck01W+FMuAkQMIe3loVPwnsQXRFLeHx4pgRM37t/fpF
         oAvUVWZ+IkkClo/AFmdxBrxly65igc7syLBz4dz7snMDKP82fiVPlwk3Bt5WR/ytgBPf
         T1vj6slkPUbNmHmAf9jg24hXqTwf8iY9W4EygHDV4Bi3tg3TeN3q7jBRkmBpjmcR8uTR
         1SULd3xkB5JyMGZyoF+yh8vze7qQB/j4AWUgE+M6LPBV5Vx9frlUqsJe3XhZ5/RXY/kF
         hrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rhjMWnbPiyWtnSlNKUPMhCILBSQuKkW5JKpMpkNUhPc=;
        b=0iM4D3WjZ7jeORmb9ricIA3vDYWZQPgt0HtKtKTmE9PFXzPu9JTgb7h3EEt9+IGZMV
         c3KFPlqhN8k5Sg4Lo//Afn5n5S7rxEBP7PCIRGKDGZcNXL4QzmetTnJ2ERTcd2IZAjNf
         q8XcrB7QwxkaG1ysd+gJTZtU9FSq9lB9p7d3Z7cPDpJSRL6PfMO0km9TpWOY9NfFoJ/c
         Wsn7lNh92+4NJXcaHIcJ6LpCYgvgqcn4ddTAWYnqdeJfMHASsIa+7K6Rz4mytIUxa4ZO
         tQKqNa+9F/cIsq5gbNbjasjQgIpqST2EEmJ9v826ijENaXjjEEDcGG6gsapXKIy13XUb
         Wnrg==
X-Gm-Message-State: ANoB5plyNzx3t7hxzq1lEZRJDebsS4ZtI9dZzgeeZM7+IrRSU10UaWQI
        oRZE4/dWCCeCOPZURglSkzw2e8kOeJ/jg8IS
X-Google-Smtp-Source: AA0mqf4dQ9dBRg41J79ai7kzpTgLAKtrtWRzPIvGXbB1MyW2oFA22ZTfWkIZpTFB1l+T1p5GnGRkcg==
X-Received: by 2002:a19:645e:0:b0:4a9:e27a:1cfa with SMTP id b30-20020a19645e000000b004a9e27a1cfamr3719038lfj.147.1668418848354;
        Mon, 14 Nov 2022 01:40:48 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n26-20020ac2491a000000b00494a603953dsm1762430lfi.89.2022.11.14.01.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 01:40:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: pinctrl: qcom,ipq8074: convert to dtschema
Date:   Mon, 14 Nov 2022 10:40:45 +0100
Message-Id: <166841878696.36382.14839128580435642280.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108142357.67202-1-krzysztof.kozlowski@linaro.org>
References: <20221108142357.67202-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 8 Nov 2022 15:23:56 +0100, Krzysztof Kozlowski wrote:
> Convert Qualcomm IPQ8074 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
> 
> 

Applied, thanks!

[1/2] dt-bindings: pinctrl: qcom,ipq8074: convert to dtschema

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
