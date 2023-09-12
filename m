Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A957C79D3D1
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 16:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236017AbjILOfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 10:35:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236042AbjILOfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 10:35:13 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE67CCDD
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:35:02 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-31427ddd3fbso5393102f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694529301; x=1695134101; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N3T2cJ5Dg3KIAmwCPxCvyN1h31PBOD8rwtyP0zH6rYc=;
        b=tbJl41484BBofbo1UJWPoUaxvxeUGOUcc9688OHjrxQDQhOwQtXCBK58g0CwNtO0Ua
         8Wh+vOh1EGSEzmx1/pMq0kI8csD5vw3sx8viCkKYiMK2XJLx1oqg1OQhFFZNJQsynZe6
         FE0ucyGKvVP/qd1rTZ5nuoBEWOI5UXL6Bc8yr3zLUaKM4hYlIsErCEpyjwFl6JCV4HI3
         9sXBWV35MF+273hxHvqCyKpISWTu3dXieqT8cIUFIsMoH62yQSXMbOvR8YuLRKBgsud0
         yfVQN+7QW8NhaG8FykEkyQ5rUvftaiVyWhalv7COyZCdmvZyrG7XcEuC4VwmQTxwC2LS
         zY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694529301; x=1695134101;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3T2cJ5Dg3KIAmwCPxCvyN1h31PBOD8rwtyP0zH6rYc=;
        b=oGzxDTJ4WMYS2VcJbj3WXB74/Zjp4g/kiONcRIszvWKeChwTkjJH+yp+2p3bM3kjro
         ke3xW63kJNteDpHyRB7U/D0YpQReAlPdm0J6e9/eEuDthTEQ3V7Q8cUfA69XGUFJUPSO
         IpAye827NxqNlwSFTyzDHm6AgcHtJmeKrgPX9rMVzMWnDzmk37o0N6PpF72Z18+L8gPv
         KgdHhUnwOicxrqZO3Qg7zhi4RAYFtvabwOJ3s/ah8QGpqFMv6rbwUqHbejBGvm7Flh/n
         6GYbCGfzNz0raqttT7C2IddjyNws+SdL0oxsi7kM+DTeCG8RkBlWm64Ei948YgE82o6M
         FUlQ==
X-Gm-Message-State: AOJu0YxcBqFI1sq5Iid3eGcpluWjWS0K945VZnv6Bpm2Lx71EJQ5TIa8
        S99r7z3fh8egRRAkrax16ZNcRg==
X-Google-Smtp-Source: AGHT+IGeR8boTA8vqNczXJ0BK+AGIug4TqyTfXy7WOaSTRnGdevow91B/8GXgcQ9xvO1ZycDBEh7Hg==
X-Received: by 2002:a5d:5446:0:b0:317:5849:c2e0 with SMTP id w6-20020a5d5446000000b003175849c2e0mr11385937wrv.9.1694529301359;
        Tue, 12 Sep 2023 07:35:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id y17-20020adff151000000b0031c5dda3aedsm13067440wro.95.2023.09.12.07.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:35:00 -0700 (PDT)
Message-ID: <f417f936-2f07-b8fd-2b7f-37f4cb287d63@linaro.org>
Date:   Tue, 12 Sep 2023 16:34:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 1/2] dt-bindings: arm64: dts: mediatek: mt8365-evk:
 update compatible
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>
References: <20230912092444.31635-1-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912092444.31635-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 11:24, Macpaul Lin wrote:
> Update compatible of 'mediatek,mt8365-evk' from 'enum' to 'const'.

This we see from the diff. But why? Sorry, this change is pointless.
Also not really helpful, as the entry soon should be converted back to
enum...
> 


Best regards,
Krzysztof

