Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75BE24D620B
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 14:07:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348750AbiCKNIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 08:08:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346650AbiCKNIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 08:08:14 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C72981C1ED1
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:07:08 -0800 (PST)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9289E3F60F
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 13:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647004027;
        bh=ozI/X9bOo7IR4Nc9BURhpXRb3lcz1fTkzuVpvV/bLVo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=fb2hnFTidmWf4WnwqMz0EEbPLf5VmN9oyfAify4S0DpUBMa842XkOmd3VCGK4eKJ7
         N5KOhC15EJ9ss2qqWoieoXn+wh3h/ExAeCm3GB7GxZTaco5mJzKlcFbIv9TTtc24eA
         UEyiTagpsdsrrayLWHp0Mqc3WUCV/C5tKTMqPTHHzntzCL7BLB3/bNItCFr5oVyze0
         10rWaKCBy9/gWip95AIDgXyXUmw2ZA8hpj84Ev5mwFLDPf9tMDklDE1eBuKr1PAbG5
         O2ZqoHDK7TYaG9v+rH/hcDrVZYJrkn7uVX9zyZ6LdEW9mPVV3KukDkMIcbt4XY/6CR
         Ud25qtFN1yrnw==
Received: by mail-wr1-f72.google.com with SMTP id f14-20020adfc98e000000b001e8593b40b0so2792722wrh.14
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:07:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ozI/X9bOo7IR4Nc9BURhpXRb3lcz1fTkzuVpvV/bLVo=;
        b=RbjYLnkYm/OVbSf9ezLEnTn4Kwxrjy7Mv77+zuzpMLh/aehb7jzrbndsxkGG0SWjJf
         V6wLBthRJJwwBGZLG9CNs8Oryqa36DBDgAex/SgthChEHvzkracLOgGX8pbg1apPvNsS
         tx88IlRGEij4Wymq6Imt4T8uYk7tdtn5pHPOINCjdWJFBrUD1QLTerhEWoQBDsr4jiiq
         jW6GFMao7a2Ox1/EAL7Tf6s/98arAVmnr0xvKTwubZceSt1PPxNPdys32JgIyIdmzyry
         miHD342Dn7HeaZJJEa4VykjSKmdEZiJnXFYVNy9XI9sV1nqI7mxGC4iCtIxF41rGs6fq
         7Kyg==
X-Gm-Message-State: AOAM530xNTD+B2GQusC85RfywdMZZMJyuZd8eEchzm0IyildU2e71bcL
        QGikjvduax1e2ljnWmaw++nneDEnULv3yQIpqU/EI/NwEcgZuhg6AoBS09UWJM+afL4P7PpIF4g
        CAsx+sh15co+mmhY7mY7DbFVSyb5XIDuqZS29nWs=
X-Received: by 2002:a05:600c:38a:b0:389:ed94:b6d9 with SMTP id w10-20020a05600c038a00b00389ed94b6d9mr2396909wmd.111.1647004026483;
        Fri, 11 Mar 2022 05:07:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwd3vC+SdiuTXpeR6B8nxf1LHBqm7SaiKDkXDHvm1xWl5JJREqguSxOuUHzGiKNui30mqa3og==
X-Received: by 2002:a05:600c:38a:b0:389:ed94:b6d9 with SMTP id w10-20020a05600c038a00b00389ed94b6d9mr2396891wmd.111.1647004026194;
        Fri, 11 Mar 2022 05:07:06 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d4010000000b001f07772457csm6425237wrp.101.2022.03.11.05.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 05:07:05 -0800 (PST)
Message-ID: <2065a687-b634-b8f6-9dd9-8b8855464f40@canonical.com>
Date:   Fri, 11 Mar 2022 14:07:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/2] dt-bindings: usb: USB2512x boost value for up- and
 downstream ports
Content-Language: en-US
To:     "Neumann, Bastian" <Bastian.Neumann@dentsplysirona.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Richard Leitner <richard.leitner@skidata.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <PH0PR17MB48481AC6D6B808D2C106C4AA8E0C9@PH0PR17MB4848.namprd17.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <PH0PR17MB48481AC6D6B808D2C106C4AA8E0C9@PH0PR17MB4848.namprd17.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 13:09, Neumann, Bastian wrote:
> This patch adds devicetree documentation for signal boosting properties.
> 
> Signed-off-by: Bastian Neumann <bastian.neumann@dentsplysirona.com>
> ---
>  .../devicetree/bindings/usb/usb251xb.txt      | 22 +++++++++++++++++++

This looks familiar... is it a v2?

>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/usb251xb.txt b/Documentation/devicetree/bindings/usb/usb251xb.txt
> index 1a934eab175e..538ae49fc31d 100644
> --- a/Documentation/devicetree/bindings/usb/usb251xb.txt
> +++ b/Documentation/devicetree/bindings/usb/usb251xb.txt
> @@ -68,6 +68,26 @@ Optional properties :
>   - swap-dx-lanes : Specifies the ports which will swap the differential-pair
>         (D+/D-), default is not-swapped.
> 
> +Electrical signal boosting
> +The controller supplies a "boosting" functionality to drive up the USB
> +electrical signals. This could result in non-USB compliant parameters
> +(one example would be J/K level test). This should be <0x00> unless specific
> +implementation issues requiew additional signal boosting to correct for deraded
> +USB signaling levels:
> + - <0x00> : Normal electrical drive strength (no boost)
> + - <0x01> : Elevated drive strength low (~4% boost)
> + - <0x02> : Elevated drive strength medium (~8% boost)
> + - <0x03> : Elevated drive strength high (~12% boost)
> +
> + - boost-up : USB electrical signaling drive strength boost for upstream port.
> + - boost-1 :  USB electrical signaling drive strength boost for port 1.
> + - boost-2 :  USB electrical signaling drive strength boost for port 2.
> + - boost-3 :  USB electrical signaling drive strength boost for port 3.
> + - boost-4 :  USB electrical signaling drive strength boost for port 4.
> + - boost-5 :  USB electrical signaling drive strength boost for port 5.
> + - boost-6 :  USB electrical signaling drive strength boost for port 6.
> + - boost-7 :  USB electrical signaling drive strength boost for port 7.
> +
>  Examples:
>         usb2512b@2c {
>                 compatible = "microchip,usb2512b";
> @@ -86,4 +106,6 @@ Examples:
>                 serial = "1234567890A";
>                 /* correct misplaced usb connectors on port 1,2 */
>                 swap-dx-lanes = <1 2>;
> +               boost-up = <0x00>; /* no boost for upstream port */
> +               boost-1 = <0x02>; /* medium boost on port 1 */
>         };
> --
> 2.30.2
> 
> 
> -----------------------------------------------------------------------------------------------------------
> Sirona Dental Systems GmbH
> Sitz der Gesellschaft / registered address: Fabrikstraße 31, 64625 Bensheim
> Registergericht / court of registry: Amtsgericht Darmstadt, HRB 24948
> Geschäftsführer / Managing Director: Dr. Cord Stähler, Jan Siefert, Rainer Raschke
> Aufsichtsratsvorsitzender / Chairman of the Supervisory Board: Dr. Alexander Voelcker
> 
> -----------------------------------------------------------------------------------------------------------
> 
> 
> Diese E-Mail ist ausschliesslich fuer den angesprochenen Adressaten
> bestimmt und kann vertrauliche Informationen beinhalten.
> --
> This e-mail is intended only for the designated recipient(s). It may
> contain confidential or proprietary information.

Please drop it. Since  I am not on recipients list one could think I am
not designated recipient. This defeats entire purpose of public discussion.

Instead to public lists emails which are entirely public.

Best regards,
Krzysztof
