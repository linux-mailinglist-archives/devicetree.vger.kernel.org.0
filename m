Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1ACD70C503
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 20:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233127AbjEVSSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 14:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbjEVSR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 14:17:59 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D431EE0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 11:17:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-307d58b3efbso4196985f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 11:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google; t=1684779476; x=1687371476;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q7P+DBBi+Cpf56qPunfuWd9Z9zfzbOV/OEECAbDuPS8=;
        b=Ee4VTVCP4jy7R9WxX+j5tVAlpJhGMDBcv3CT1skxCdyzrPx62chpLscHjIMwYGAJB3
         wrwqvGxMJxaiPopuXUboolfovc0wzwa9hIbBATh/w0XiFbWT80cyGwNdtz6kHMUgwrB3
         UCxYnUsrsMHDDh7w2nU0SViJ6AqMwoDptIpKL4tlqOt7dFHCT91TMgbe9pVqmWWbAnkR
         zPxUf05MRoTgoiuF29tk1G25LCaUWGTqIDPoqCNywD9HjyvnJGwxzczqodsYkEx9iETM
         NZXvj0d+vAjDz+Uun5iNHtViO4mQimTebuoca2g+rr+7YXdIm3nkCKke7or0VHuxRgxx
         7JfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684779476; x=1687371476;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q7P+DBBi+Cpf56qPunfuWd9Z9zfzbOV/OEECAbDuPS8=;
        b=R4JgQVXxcmILQiF1tE7uQwDYcV+W3Of5aafSY62FWCYWEDY0PkQ6D4yQ5E/Fcndhj4
         VAHaHBNNQvCiUMo0ui69Zsc3KiZJLdMVXd8ZN++RCrGykXM351ybLbwJBnmfyldRdbkp
         JcXgK/ck9fHnQvVZMhVDDFJqVpIYTZCUKcVqg2HtUssQVsjvyZ31jyy7CgWALspWpB/c
         muR8trUcTSanAhVgO/TXUzPxs+krSTMyWgW/KTGZdgU5pNJ4cAS8lI2ILwnzWx22QUlM
         txHPG2y2sfBjFHLOzT0c7abSKhLAoQXCa3oWO0udKeYSpxLX2T6hs4fCKkFqaWUqDRjV
         rQZQ==
X-Gm-Message-State: AC+VfDx59WcGlgVD5sv9zpOLHC6UWq2SFyZBzd8Wxdw9Vw9P0PSTgN69
        BX19tqpjGgxjJJDUSkGmSEyvdw==
X-Google-Smtp-Source: ACHHUZ5b3fcaOykV0SCUoXoLnAw7b7jZX2zv8R6gkhGbukcjSahYAvAxwwOdzoAPXg6RYwfEJecFKw==
X-Received: by 2002:adf:e409:0:b0:2d5:39d:514f with SMTP id g9-20020adfe409000000b002d5039d514fmr9646442wrm.65.1684779476291;
        Mon, 22 May 2023 11:17:56 -0700 (PDT)
Received: from [192.168.2.9] ([51.37.135.152])
        by smtp.gmail.com with ESMTPSA id j18-20020adff012000000b00304adbeeabbsm8470252wro.99.2023.05.22.11.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 11:17:55 -0700 (PDT)
Message-ID: <2be2af5e-d117-fa2c-f960-e7f0c3ca3d0b@conchuod.ie>
Date:   Mon, 22 May 2023 19:17:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH net-next v3 1/6] dt-bindings: net: brcm,unimac-mdio: Add
 asp-v2.0
Content-Language: en-US
To:     Justin Chen <justin.chen@broadcom.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     justinpopo6@gmail.com, f.fainelli@gmail.com, davem@davemloft.net,
        florian.fainelli@broadcom.com, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        richardcochran@gmail.com, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <1684531184-14009-1-git-send-email-justin.chen@broadcom.com>
 <1684531184-14009-2-git-send-email-justin.chen@broadcom.com>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <1684531184-14009-2-git-send-email-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 19, 2023 at 02:19:39PM -0700, Justin Chen wrote:
 > The ASP 2.0 Ethernet controller uses a brcm unimac.
 >
 > Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
 > Signed-off-by: Justin Chen <justin.chen@broadcom.com>
 > ---
 >  Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 2 ++
 >  1 file changed, 2 insertions(+)
 >
 > diff --git 
a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml 
b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
 > index 0be426ee1e44..6684810fcbf0 100644
 > --- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
 > +++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
 > @@ -22,6 +22,8 @@ properties:
 >        - brcm,genet-mdio-v3
 >        - brcm,genet-mdio-v4
 >        - brcm,genet-mdio-v5
 > +      - brcm,asp-v2.0-mdio
 > +      - brcm,asp-v2.1-mdio
 >        - brcm,unimac-mdio


 From V(N-1), there was some discussion between Rob & Florian:
 > > How many SoCs does each of these correspond to? SoC specific 
compatibles
 > > are preferred to version numbers (because few vendors are disciplined
 > > at versioning and also not changing versions with every Soc).
 >
 > So far there is a 1:1 mapping between the number of versions and the
 > number of SoCs, and the older SoC uses v2.0, while the newer one uses 
v2.1.

Rob's not around right now, but I don't really get why if there is a 1:1
mapping you don't just name these things after the SoCs?

Also, my mailer **refused** to let me reply to you because of something
to do with a garbage S/MIME signature? Dunno wtf is happening there.

Cheers,
Conor.
