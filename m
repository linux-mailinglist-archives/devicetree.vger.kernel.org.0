Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CDC86C9C80
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232682AbjC0Hmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232693AbjC0HmT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:42:19 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A3959D4
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:41:49 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id t17-20020a05600c451100b003edc906aeeaso4478077wmo.1
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902907;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wftUyDBTHaE7XsvAT89oBtCXtZZaZ2/72dyCqkMo38o=;
        b=GnzyZeSybUCxnTGVz2QA9FDPPHzPJeyS+r4L6lDXn5RVquL6LZ1iaA7IdPb7zgofO5
         xL52VRYTyDhiYoGM60Ru+4LMHb3d/aE97LAIvWyNNaPeGazQkoLtSWmHhi31ozOAGIbl
         bdjJ+zUs/bO501qVmXT6ddurN6c3ck8UoEeA1r9AxNXuVN6kzfVHtpfcREdfGSSuq0T5
         zQ5tl/XEan4hvSRV8M5eEmaNh5RxxCH8G3skCzx8xEouRzMl1r8JutgvNYPI2e/KnOu+
         mus3tqTuowFZXbXnFmXJ8TmKiUfYjJF9J/FFiVoOt0YNsikRQi/h0njRSZbgFfOro5Co
         qtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902907;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wftUyDBTHaE7XsvAT89oBtCXtZZaZ2/72dyCqkMo38o=;
        b=EQFrMIB4nf1cWRZRpWDz76MUeTlyYhF0II34H12tAoh2ep7poIBDp9FbygugI6VyvQ
         JAfFIfJX37i9D1Q27Nt7co1MQPXBQPS8wb6E1abKpOrE/ZbpDerhrIdRhrYwLQ4OPNl0
         4JKY41lajErRdcc/mO9X0gCPuZr9gHsyTr1HReLQFAOHWnldD2/wMr3c+crTpL/wQ7rM
         7olRzfhNPLZdW4oI8wRVr8dBIr6SWHuToYuANPa9fDdMcjMayAqNrD7BXGxMLxDhcWAc
         5ngfa6AZrpyHNyShK55Ovbpf7jAwrMPZ+VnuSfsSC0Axn1xRlagK0EflCN4jO5IZASyx
         yQDA==
X-Gm-Message-State: AO0yUKU//Vo2OBBQdQgq1U4W4Pen9DvbEaLrwKJarQ9xybiz3+J6RaJk
        solQoFIAV1tqGJAYadyAApzBhQ==
X-Google-Smtp-Source: AK7set8q0LEyBkDhe3iz/XDbNL+smBGxwor15EZq+ZO8fHwN8HGNFIa9XUon5Vly4d30jmQORdJqqg==
X-Received: by 2002:a7b:ce8f:0:b0:3eb:42fa:39d5 with SMTP id q15-20020a7bce8f000000b003eb42fa39d5mr8425248wmj.29.1679902907507;
        Mon, 27 Mar 2023 00:41:47 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id l15-20020a05600c1d0f00b003eb2e33f327sm20207317wms.2.2023.03.27.00.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:41:47 -0700 (PDT)
Message-ID: <0bf8fa92-fa41-31f0-0ee8-05dddebb51e5@linaro.org>
Date:   Mon, 27 Mar 2023 09:41:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] dt-bindings: display: feiyang,fy07024di26a30d:
 document port
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
 <20230326204224.80181-2-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326204224.80181-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 22:42, Krzysztof Kozlowski wrote:
> Panels are supposed to have one port (defined in panel-common.yaml
> binding):
> 
>    rk3399-rockpro64.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../bindings/display/panel/feiyang,fy07024di26a30d.yaml   | 8 ++++++++
>   1 file changed, 8 insertions(+)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
