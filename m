Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B27786CA077
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 11:50:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232718AbjC0Jt7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 05:49:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbjC0Jtu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 05:49:50 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E456155B8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679910540;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UexsxBht+jxcQGbFpZtHQeoklM+LHfVAC+dy1h7cowM=;
        b=EM7K0TXBHkeF8x65RVZUTvlItHQIzg+g85YYp++RzPWsI0pziIToTlnIIcnO0LtoZSP/G5
        yPbcJ71YAea6DuFbxmZsZTfCHX5HjP+6bsROdyiwzlj8OxdZJ6NmuGwHILpF1X11yB/oIQ
        Eo8Pmw9b2Oq0gzAChBPbfEkNvLqO9rA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-zqmRJdfQNw2sSp3kzzwcAA-1; Mon, 27 Mar 2023 05:47:38 -0400
X-MC-Unique: zqmRJdfQNw2sSp3kzzwcAA-1
Received: by mail-wm1-f72.google.com with SMTP id iv10-20020a05600c548a00b003ee112e6df1so4488046wmb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:47:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679910457;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UexsxBht+jxcQGbFpZtHQeoklM+LHfVAC+dy1h7cowM=;
        b=CQjqByVaLzaqZ9MehzghOYECi83UMxY+p3PgT+GGzovs6xCfKiY1rI5qa8LVO6Ty1V
         MHuOOK8Sn2OTdnLZIQqmu8jGghtRW8G8gD4odAtDenqeE/VJFsiJlPVVwkHoS8zvaG6C
         nPZcNWHHKsaLkFHq5I1AjZSyex4Y44DKEPDx1LFxT6MhYyyCvnw/ak3U7FcR9OC89sxT
         kJmaRilYPX6H8K1T4td8kxpUSvmwEULSect/r0fcMlalb5DCG1gAtEluEPtYDdxi5X1o
         H15dEhjT+soBHCvqLP070KR7mIrRwtomA8cl8f0cepQvjiEBKeAJHSHcYoFCJXaij6FJ
         1NcQ==
X-Gm-Message-State: AO0yUKX8rjaBUtb8WeMCUQPl0oG31ydy/DCzGS9lUqQ01vvTLoIipXHE
        8SfyrT8L0wSBNb/v8wkbCOs5LW7DRp5TI3EhcU2lqIAiCMaOymu26AD6IL17YiNI4AZBjExa4fT
        fZ2+3qL6yEBL6xWMzWo6AVQ==
X-Received: by 2002:a7b:ca4a:0:b0:3ed:d64f:ec30 with SMTP id m10-20020a7bca4a000000b003edd64fec30mr8803745wml.33.1679910457672;
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
X-Google-Smtp-Source: AK7set+UMdm5OyaHT8e/wc2182TlZp7+1fqvjLjvg3Dk9zSSwByHNG77k78UMNffu150tQK9N3KGLQ==
X-Received: by 2002:a7b:ca4a:0:b0:3ed:d64f:ec30 with SMTP id m10-20020a7bca4a000000b003edd64fec30mr8803729wml.33.1679910457371;
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g19-20020a05600c311300b003ee74c25f12sm8255428wmo.35.2023.03.27.02.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Jarrah <kernel@undef.tools>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        linux-kernel@vger.kernel.org
Cc:     Robert Mader <robert.mader@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>,
        Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <40e61776-bcdd-25ac-286a-1ba0184dbd7e@undef.tools>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
 <8197476.T7Z3S40VBb@diego>
 <40e61776-bcdd-25ac-286a-1ba0184dbd7e@undef.tools>
Date:   Mon, 27 Mar 2023 11:47:36 +0200
Message-ID: <878rfittjb.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jarrah <kernel@undef.tools> writes:

> On 3/27/23 20:11, Heiko St=C3=BCbner wrote:
>> Am Montag, 27. M=C3=A4rz 2023, 09:55:15 CEST schrieb Jarrah:
>>> Hi Javier,
>>>
>>> On 3/27/23 18:41, Javier Martinez Canillas wrote:
>>>> From: Ondrej Jirman <megi@xff.cz>
>>>>
>>>> The phone's display is using a Hannstar LCD panel. Support it by addin=
g a
>>>> panel DT node and all needed nodes (backlight, MIPI DSI, regulators, e=
tc).
>>>>
>>>> Signed-off-by: Ondrej Jirman <megi@xff.cz>
>>>> Co-developed-by: Martijn Braam <martijn@brixit.nl>
>>>> Co-developed-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
>>>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>>>> ---
>>>>
>>>> Changes in v2:
>>>> - Drop touchscreen node because used the wrong compatible (Ondrej Jirm=
an).
>>>
>>> Any reason not to include this with the correct compatible string? It's
>>> been available since
>>> https://lore.kernel.org/all/20220813043821.9981-1-kernel@undef.tools/.
>>> Swapping out gt917s for gt1158 in the node from your previous patch
>>> should be enough.
>> Just wondering if I'm blind, Javier's patch doesn't contain any touchscr=
een
>> controller (haven't found neither gt9* or gt11* mentioned there), so
>> I'm inclined to go with the "touchscreen can be added later" thing.
>
>
> I was just commenting on the "Changes in v2" section. v1 had a=20
> touchscreen node in it (assuming I found the right v1).
>
>
> All good, I can follow up with a patch for the touchscreen.
>

That would be great, thanks Jarrah!

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

