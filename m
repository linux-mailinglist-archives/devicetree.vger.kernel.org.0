Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D2B76CC2C5
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 16:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233348AbjC1Osl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 10:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbjC1OsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 10:48:20 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB726D307
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 07:48:08 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id h8so50760443ede.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 07:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680014885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMuegniqFjuWU/AoMlUG2hK0eMl2E6VjLUE5zlLE9e8=;
        b=ZWL5QiItDi2M5Jnu/IDKggD5lypPhInUpNqPoRKOX6AUYd/MlPgq+fMGTW/lHcAfL+
         iGACfEQ50cL8VephyPKTmoPYNrY20L5/9jM2tHVcyEqIJZP4q2qx2pv+G5nn3zJV6Gfp
         pufhnLVAGIeUDOYSzbPC3SDTs6EvtG/nDOkTrJxVBc+hkeIYvLZszrZ3oCJTGBhjylV7
         hHao/MRzFAtSvfDCcAX+qctJSbqhRxCnaLetsFSzq4r+eALUVlCzy+2DNPLnz2PhK9z6
         xvM4IrTQoi6soDoMl8AKuxcY2SprCoXBfiCymhZ/DhrhmaNOolZ9OnOQQyeeXjx4INb1
         354Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680014885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMuegniqFjuWU/AoMlUG2hK0eMl2E6VjLUE5zlLE9e8=;
        b=JF/iBwZxVyoxdBkYXY842O00Wyoq1m6GjM/deuY/j8xkmxFxvvm7iSnvi/e6vjJFqX
         9tyXzSSCLA3DN9jmCnPocFDE0VzwHZ/q3zXBJuuWHI8cG0zzKYmnaoUSeIOJjhKSPkd7
         wLefyFgzM8hhTThM5nKB1vNR8FoFeZs4VqtdwNF4ua43ww1x9CZYe2SJyN5FborJ5vyb
         Sn4GCcNj6RiLSHtRIuUXeptEYyWb++IuUUiXacYRBlhU6I2oZ17ZqqnHaXVOhYbxYP/H
         /zoMaCYnfRnuaefld7kQ7CJC7JTTTA+LnY5bxcIALoe/AjDR8RBRDqcus23P236tosK5
         B6Tw==
X-Gm-Message-State: AAQBX9eXVsBROlj2eAdw5mGgcWQWD2Q4NcBP713NoNu1Aw5zExlGZxlo
        3u1UOC57tA4nU+puAXzYQnrssA==
X-Google-Smtp-Source: AKy350Y2xnQW9raqN0NUOlAtswBML0x4+QcffeGsP0VHcvAkCPvGxPKONFOTBXjvmT1OeAWXMIU+kg==
X-Received: by 2002:a17:906:4796:b0:93f:3084:d6f with SMTP id cw22-20020a170906479600b0093f30840d6fmr15159453ejc.18.1680014885530;
        Tue, 28 Mar 2023 07:48:05 -0700 (PDT)
Received: from [10.105.135.205] ([88.128.92.162])
        by smtp.gmail.com with ESMTPSA id lj24-20020a170906f9d800b00932ba722482sm14580086ejb.149.2023.03.28.07.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 07:48:05 -0700 (PDT)
Message-ID: <256e7c1e-c741-99f0-59e7-726c53d85c2f@linaro.org>
Date:   Tue, 28 Mar 2023 16:48:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: gpio: fsl-imx-gpio: update gpio-ranges
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     linus.walleij@linaro.org, brgl@bgdev.pl,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, stefan@agner.ch, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20230328052912.1957000-1-peng.fan@oss.nxp.com>
 <CAL_JsqJvOZvw7BKYZRTf3gQwyVOmhva8BFHYF8-rf5uyo_HMUA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_JsqJvOZvw7BKYZRTf3gQwyVOmhva8BFHYF8-rf5uyo_HMUA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 15:57, Rob Herring wrote:
> On Tue, Mar 28, 2023 at 12:24 AM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>>
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> one is not enough for i.MX8, so enlarge it.
> 
> But it wasn't 1, it was unbounded. As dtbs_check shows, the new bounds
> aren't right either.

Uh, so 16 is also not enough...

Best regards,
Krzysztof

