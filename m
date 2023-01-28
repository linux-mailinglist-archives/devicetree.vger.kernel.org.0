Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 967AA67F702
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 11:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234055AbjA1KSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 05:18:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233982AbjA1KSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 05:18:02 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E75166DC
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 02:18:01 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id m7so7044189wru.8
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 02:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bGiI92Gv14OcC7268g8Iztb++66qMkCEXrNnDz3yk2I=;
        b=Hr11J1iksG5KNOBcwAPbixsGyw7SQNvj4ZF18B6lPFwdxOAqI/XfrPWISjOPH9UfqD
         HjkkhZyGaKgJaufXOgujGYaSpY4WlYAJzaInQ1ib//PHVgpu4O6Mh6cUuTIrL/Lfoopq
         pIUy4siroWb8/O0nm7vlozMluly6xW7qi5WkbDKItdUz6ib0dFkmURgNHYv54V0yuAZ9
         gVtOYaqqH4HJ4K3SsEeIC955eYCSE7O61vMSHNRFq3b7EaIRifr6RMVupMEh+nc7o7+0
         WDJAa+fIIiCul7eH8SqKy65pk9inSLKMRA3fN5Gl1RD7FVcXTvDXH9TQqW6kXQzmQG1P
         ZRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bGiI92Gv14OcC7268g8Iztb++66qMkCEXrNnDz3yk2I=;
        b=QyH57KkUWaz3zCNK3FEQpYJFMYEXifik73r8xQjmTYwEZ5VI0o7znCWigEdHvBKS8/
         i+rViemIUWp/GHmB+c1Y70fyQmOvyxlgC31W2gOeW74ADkeRN/3dl1AMBg7KAVLxvLHi
         Cu+vHYmi72ECGW0/L/hxd6C/B15K/4Z1uAHaj5DgSGaRjb4eZWGyefISvtTp75ows7Z8
         u0AtdjBWf8CvwVRDfZ+az3OOsGW3Sy+BHHzWGIp+iULpJlFwFvUB8+IOfBrIPyerbXl3
         tbTHiADr0JjymWWb4eG9F6ei4RgK1CN0mHv5LH1GEe1DxZgMLx3CBR+2pzCT562A7BHt
         Fifw==
X-Gm-Message-State: AO0yUKWz4rfFWmEJVMhVfAukByJTh1mGNzxOkIxjgouwog4E3uNFwXVe
        O8V4Gh1w4k/oK2RzVsRp3ow9RQ==
X-Google-Smtp-Source: AK7set+AIPTUKyfNq7pRt5rPKTMr3E37tVQOdTnwmHRee2+HywjckGbeo41zVEiKbdmW+Xzu70gNdg==
X-Received: by 2002:a5d:42cd:0:b0:2bf:81eb:dc26 with SMTP id t13-20020a5d42cd000000b002bf81ebdc26mr17255855wrr.37.1674901080043;
        Sat, 28 Jan 2023 02:18:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z4-20020adfd0c4000000b002bdc3f5945dsm6112812wrh.89.2023.01.28.02.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 02:17:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Daniel Machon <daniel.machon@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        UNGLinuxDriver@microchip.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: microchip: use "okay" for status
Date:   Sat, 28 Jan 2023 11:17:54 +0100
Message-Id: <167490104050.6514.7267860190574012786.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127101824.93684-1-krzysztof.kozlowski@linaro.org>
References: <20230127101824.93684-1-krzysztof.kozlowski@linaro.org>
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

On Fri, 27 Jan 2023 11:18:24 +0100, Krzysztof Kozlowski wrote:
> "okay" over "ok" is preferred for status property.
> 
> 

Applied, thanks!

Let me know if anyone preferred to take it via sub-arch/SoC maintainer tree.
I'll drop it then.

[1/1] arm64: dts: microchip: use "okay" for status
      https://git.kernel.org/krzk/linux-dt/c/d105729968404fd42a624bfea01b2f8e46a4947a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
