Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6EF84CE64D
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 18:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232154AbiCERo1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 12:44:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231898AbiCERo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 12:44:27 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28E4720C2CD
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 09:43:37 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D97953F5F5
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 17:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646502215;
        bh=WA79imcrFseqVS1ZTUJxkEP0srNHgX016w3iNaOE7Z8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=LfGHIqxxxvMBm4qJ92rDWThMB722hVOwqH/iryWOzzvljsJeKJO9bK+gPygmxeH7Q
         4H8PfNO2VAdUT93uDCcjBp3bYcJB3efnveJzywJZpnSEcR/ScWyC+enBxNbG3K5xQz
         3lk7DE27TUka6unmk3e8tF5ESTX0hArQn0bQzgXy3bDxzjVqnrakNUKGiua3P1+4GX
         xOAaMkxlR95va7VuJv3VKlBjOXqC7P9/D2Kz6HctVqqQjTedJHKFNFytJFva1EbKeL
         gGbverGEtUM426SFcmnoCHtINKJ5+PBTXB5aVuV2RabaTOS3vCmVUaI0+42c7AwerM
         JB3PRTogvP7fg==
Received: by mail-ed1-f71.google.com with SMTP id da28-20020a056402177c00b00415ce4b20baso5021514edb.17
        for <devicetree@vger.kernel.org>; Sat, 05 Mar 2022 09:43:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WA79imcrFseqVS1ZTUJxkEP0srNHgX016w3iNaOE7Z8=;
        b=6COEmqnXJOSLa4DUXA3UYi5TguH7Nx5EtGTAiMh9gjI7Cdb52wogM+pV8QmAu9S7gL
         bB/XzcXQ/H4DEjqpnoAJWN7bMFu7jExJ3/Pxcyfr/purK6lM6/bbAxORsFumF7AXSJ/i
         HMT4VNyqMjACbq3xGf0+S7G8HHo4KzJsBWov0WYqv73A7yDgPWFb2Z42SV9bOwhyr7vm
         Heso+YbgoETDCH5EAHqKFkzEZobRTWtssVC41VrMBYbDI4Sz1t0z5XWheiIPHUx6tpgQ
         vzqwvdpiIRhcwUu4CgLhiXWmPP+APX58hWYri5ZUVumBded+HPCtHnm/nakhEWSUevkL
         zOEA==
X-Gm-Message-State: AOAM532Z6guXxdC8JGZ7zvgAexkskMPWj7rGWEk2aNgdVUieJgWB/hQL
        LsxxqmmyyF0SGG5bNrRbPNbtzsdsc+nYjUMClZedvpFPdt9LSg0QhfSAklnvkEZLAJZCVHGlc2O
        BK7mKsVZgS2lHGeGAmCnm90CNEiJIu0HqUMXPCcM=
X-Received: by 2002:a17:906:2ad5:b0:6cf:9cca:d9db with SMTP id m21-20020a1709062ad500b006cf9ccad9dbmr3386007eje.252.1646502215376;
        Sat, 05 Mar 2022 09:43:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIoUZqNCcsdZ2Op7qGi5D5yjHkt6TIjLgpzimg5j17lHULbjvbmu/5AWjYb7Q0rRjqNiVaDQ==
X-Received: by 2002:a17:906:2ad5:b0:6cf:9cca:d9db with SMTP id m21-20020a1709062ad500b006cf9ccad9dbmr3385999eje.252.1646502215198;
        Sat, 05 Mar 2022 09:43:35 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r29-20020a50c01d000000b00415fb0dc793sm2441837edb.47.2022.03.05.09.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Mar 2022 09:43:34 -0800 (PST)
Message-ID: <8255610f-82a8-80f1-8f63-88c7f944303e@canonical.com>
Date:   Sat, 5 Mar 2022 18:43:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 4/5] dt-bindings: ata: ahci-platform: Add
 rk3568-dwc3-ahci compatible
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-5-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220305112607.257734-5-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2022 12:26, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add SoC specific compatible for rk3568 ahci controller
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
