Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C23486786DA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 20:52:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230267AbjAWTwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 14:52:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbjAWTwy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 14:52:54 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F30B518A80
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:52:52 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso9913051wmn.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cQX8FwU+yVyIM1d9Uh0Lst/mt6UcJzmO021Nym1UxnA=;
        b=ndt+GQNySxm/oUPdDgcBDGpBaXA6sEFTWvXfPn2zN3xHC+wSqahOLUwkox3RC0Io/D
         GEHChfLks00fimEso1HDtUgb0vqstJpQDRSDl+63dJZAWRQzIDFABJY+s3BO0KXEOZbq
         ZHqIG47LsdceYAZMI3q+BCDWMfCLLjlGeWS1z6U1MyH6biZr7K7rTvi8cb829KAyW4RN
         nHmnE1KTEabV4jpkKNz43yXJqc4n3ct0QUZ7emfB7zySi96dbLz1cuwA89v7vGix/Tjv
         OENH/nNeiv5rbAOMnOJz+PLs3udQvMjoiapBAfqkUSNxkm+E0Cz9OquG+8Cvj2S5Nihj
         bhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQX8FwU+yVyIM1d9Uh0Lst/mt6UcJzmO021Nym1UxnA=;
        b=AVofWE77lv5rQFBwJopVncyVuNuvXCX7Do69W9P6M6YO1IdXHVqz8qzE9RYTron7FD
         sRlWbIyMKPK8Wmv5nmblhhYvBR4agA8SdQQCzuCNB4liiF6We2il6Svk45NImuI8+0La
         zNZ0IwaNRRBItj0sqEzXFptsbsQUKgj+8w5P0KcltexCn5GZTH0FMlHwEWb1y0VYLPzS
         vM2NX4m++OSh1u9bmOuF7gizvPM+pjzmGW9GkWtzJ+XOx3UvnBgcev/ApaUdrjvckFWE
         kGChry7xwWRma3ANkmFhb/jg4yZx8fBzhV/sZ1GseFm9ThzZ+npSP1Vszv/TEa0nruy6
         zIag==
X-Gm-Message-State: AFqh2koxSpwtNYncDfEvY9+wUPT5ATlBoxLnh+QNRY885L03Rj8vwHSS
        /8Dgv6vMZq0WeX0yG9I8awuDNg==
X-Google-Smtp-Source: AMrXdXum5LAGZhQDQK3EgOw1hthCew16D2WYtoCt54zBxa6vJ1/ajLs+PC242LJlsimre21+AwMWCw==
X-Received: by 2002:a05:600c:3412:b0:3da:f678:1d47 with SMTP id y18-20020a05600c341200b003daf6781d47mr25044946wmp.14.1674503571547;
        Mon, 23 Jan 2023 11:52:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h9-20020a05600c2ca900b003d237d60318sm129148wmc.2.2023.01.23.11.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 11:52:51 -0800 (PST)
Message-ID: <71fc64ea-81f2-3609-e4f9-741c177d31d2@linaro.org>
Date:   Mon, 23 Jan 2023 20:52:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: jadard,jd9365da-h3:
 Add Radxa Display 10HD
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20230123183312.436573-1-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123183312.436573-1-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 19:33, Jagan Teki wrote:
> Radxa Display 10HD is a family of DSI panels from Radxa that
> uses jd9365da-h3 IC.
> 
> Add compatible string for it.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

