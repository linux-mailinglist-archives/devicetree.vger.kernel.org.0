Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3120566B1C4
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 16:02:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbjAOPB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 10:01:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230359AbjAOPB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 10:01:58 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CAEF83D1
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 07:01:57 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id ss4so55407189ejb.11
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 07:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J3bq6rsilb+yzIau6JvOZs+9VdaUZxUWRaQK2SaliZM=;
        b=PsQwIqKmv8mUgQAfKRBTar7hkJFBWu8yHkUFdSFiONL0FtNX3oQmt62fwmI1uJMD+J
         +sddKvh15EIZgSODInndERNNqf33Cxj0ivluoXf/++txbGPkWKElLS3YwqdsE9CxR7MN
         CdenhB8vdwxa1nD/TPDp6Ks/nG7rbqocCxvY5xAvtvDTAq/QfjJZ00bC/UXZ87uvwgLK
         5EBa7NXKP7Zyockn+St7pD/YqdEIrRqXeagIwccNWWpN9BdwkiNngvUrNSCBJvy5LmRf
         D/2VGuv18XneRm2cv6sFDRTVuyjhIDREtzOIfVOKy4maK43/FZ8/uQMgI2RpWSJ/nlCS
         i4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J3bq6rsilb+yzIau6JvOZs+9VdaUZxUWRaQK2SaliZM=;
        b=NZ6ql3jGAc7toReXIOdOii+j/hfEHSGKeOYawXga0GtrOyZFwSUH0cEB4XPbQwcKNu
         /6UYLDcxmhMIqxzK3CIhJgOK/8a3mGzc+1H1cy/JSrbEcQyfqQ85QlQqfxriGVDSaGNc
         C4geaN3sDraYvniCi/8VmoZUkDh8/fRqqyEVAplhGknsYJKewbnXxuCQJA8dY4geUX00
         noHRxdgij9wVBzkf4dGY72fbiRAGG/zamOVxkfLS21QN9Jt0jNwnbKc3KKX6NzsJmkDI
         naBGQLYesUplKg+IFMMqA7siANQTzWh0ao7ny1CJ4DDOoy2We0YN+F6LNCKcUL790o5y
         utiw==
X-Gm-Message-State: AFqh2kqGgpp8FMywj7EpTVvBqPovsyBq3qz5S4hsn2XWN1lBXSfy4DNi
        un9OfR7iIL7CxxD1/InFjbakew==
X-Google-Smtp-Source: AMrXdXvutsPygOCMzesZ9qxp8xuN8emB9CtkFkWEFKnljtZ5h28K7Ck5Gtyv2iBBY6sW3n/hl5B9WA==
X-Received: by 2002:a17:906:850c:b0:7c0:f44d:984 with SMTP id i12-20020a170906850c00b007c0f44d0984mr95610347ejx.74.1673794915641;
        Sun, 15 Jan 2023 07:01:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id kx5-20020a170907774500b007c14ae38a80sm10633909ejc.122.2023.01.15.07.01.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 07:01:55 -0800 (PST)
Message-ID: <3c2c4da5-c63b-dd2a-c918-4b8163a52512@linaro.org>
Date:   Sun, 15 Jan 2023 16:01:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 1/5] ASoC: dt-bindings: Add FSD I2S controller bindings
Content-Language: en-US
To:     Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.nawrocki@samsung.com,
        perex@perex.cz, tiwai@suse.com, pankaj.dubey@samsung.com,
        alim.akhtar@samsung.com, rcsekar@samsung.com,
        aswani.reddy@samsung.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
References: <20230113121749.4657-1-p.rajanbabu@samsung.com>
 <CGME20230113121816epcas5p469f952d775cdd709de18ec63b24cedf7@epcas5p4.samsung.com>
 <20230113121749.4657-2-p.rajanbabu@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113121749.4657-2-p.rajanbabu@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 13:17, Padmanabhan Rajanbabu wrote:
> Add bindings for FSD CPU DAI driver which supports stereo channel
> audio playback and capture on FSD platform.
> 
> Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

