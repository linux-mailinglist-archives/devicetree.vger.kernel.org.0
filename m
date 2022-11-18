Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B49B962F049
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241625AbiKRI7M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:59:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241301AbiKRI7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:59:10 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48F386E56D
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:59:08 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id bp15so7130973lfb.13
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3NxaxFzNcdUjxkj1wWujP1qQSv4aJuIfgBun8CKSTJE=;
        b=fodFDbDC7l3QXUmu+TtEhItk9oGb8HZO6P/pYgALSsOz2fU9/VEUs1aiKtqfwys8PW
         J52ynGcqhLcuwvoFWcuXOJpueSb3cmg2rN13TSPib4jhMSvQZyRy3zscCMQU+2yUIKbP
         cF36ydCIzwZLKZvthtrwXbYHNjYV3ENhGTLEobkCZIxwQExD4HvTYiwuw9sriiT2MuFt
         LFIeIiGnAKxaK2TcWQQXB8sl9r/aGB7Zj39G1uDnRpsANlznM/EPS8rojavbxLKAwZ3K
         ql3ZuO97yUH0lImxFD7ryOVU3c3MrvojeFLXk6PA0VBBlz4M3Sjvl8QwP+YfNTE+eb3t
         Wxow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NxaxFzNcdUjxkj1wWujP1qQSv4aJuIfgBun8CKSTJE=;
        b=HD0oqgtY6j7akFxUMXsI43IsmkNIu93EaXRaFiQ8KcKFUwXSP1ZtwKzMxnyLaWvqL6
         u1R+diCCaMj6YHXlenOmeeBPzAVT259yil3FpMYztjqb3RV6+b2J3KiC1uerstVf0oi+
         wNDnEKO3GGO54o6KKfOaq89/tLRxYIeINyJP22mi3QS5RsPTfm++sFdKFs1VafVM0wc+
         uyo9XYCOcbPn27pV0hge/pQnEB8GVCjblMyxnjXwDwPtZtLVEygKzVMYjEeauOfxPzbs
         wk5tROeRgiddOUP+NxMBkyleuy9YSwTAvG1V+O5ia+8fRA/3WICkM4k5IkciLV7YBFDG
         163g==
X-Gm-Message-State: ANoB5pkKVItJuzFnHW218uLfZBf3uJ0VuFSmP8wypTBiSMPyls55dCJP
        nD5liDzQRKbuxjeFRuUMiwO5dJLVojHlhIIQ
X-Google-Smtp-Source: AA0mqf4ivMqG6AZhYndYtFw8VJ+Cx81bOUtgxOBSWZgbRaNrff5pJPmHvaixGx0HPFwOs5lSIQiEeg==
X-Received: by 2002:ac2:4e0e:0:b0:4b1:7c15:e920 with SMTP id e14-20020ac24e0e000000b004b17c15e920mr2439006lfr.453.1668761946381;
        Fri, 18 Nov 2022 00:59:06 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b0049478cc4eb9sm575398lfo.230.2022.11.18.00.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 00:59:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: lpc32xx: trim addresses to 8 digits
Date:   Fri, 18 Nov 2022 09:59:01 +0100
Message-Id: <166876193952.14422.18159441573911160164.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221115105049.95313-1-krzysztof.kozlowski@linaro.org>
References: <20221115105049.95313-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 15 Nov 2022 11:50:49 +0100, Krzysztof Kozlowski wrote:
> Hex numbers in addresses and sizes should be rather eight digits, not
> nine.  Drop leading zeros.  No functional change (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: lpc32xx: trim addresses to 8 digits
      https://git.kernel.org/krzk/linux-dt/c/a63ae7db698a58ba9450b24742394c0f16b2899e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
