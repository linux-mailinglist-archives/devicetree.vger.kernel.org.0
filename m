Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE5DD677046
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 16:43:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231506AbjAVPnN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 10:43:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbjAVPnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 10:43:11 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF3AC17168
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 07:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1674402146;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=IonFMa0lsWsZdfNk5QE4jBoQi/ruUQHMn+oqAHgqoH8=;
        b=HwdPa10g4V580Gm0YobhvC68a4XSSPb3VLKzTY2qEG/cSyXRGmfapdYr6uehseUU1T0FPL
        xB64erKuZY77e5P/vp0iOxUCYLFWQc0qFwlRcoApy/7//RiMziDsuSUl1i52WVZ9X13pw0
        2clgjHoRB7KuXS5M8l4AiguqnW2RcAU=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-513-MXW1v-0sNByXLJcyyEPraw-1; Sun, 22 Jan 2023 10:42:25 -0500
X-MC-Unique: MXW1v-0sNByXLJcyyEPraw-1
Received: by mail-ed1-f70.google.com with SMTP id s14-20020a056402520e00b0049e0bea1c3fso6854223edd.3
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 07:42:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IonFMa0lsWsZdfNk5QE4jBoQi/ruUQHMn+oqAHgqoH8=;
        b=OnPCPlg8kn2V/74cUbTSQzndJ9KFbxI3TV/erQwVWFkyFvt01v4e97pYbN2GEhihi9
         YLN+HXVnHn8zXrbaBAmFMrVmHvLExdlTnX+rSONE6qDOQdoR8C38MVTLvZlkg0lGdZjK
         fx8JjegBvc3Xi9Cd8SQj1Whw6AjYyMZcunvM3w7DH9KHWAh0VM7AeNGjzkAxTm0eN3eg
         PeaHvF61yYSj0EMDp5KzPhbzfk62owLBReqdhhJDaDiU6eKnJB2UcJJ+u7GhqcP4awv2
         PsyokOpu9NjRWH0sP1wP8oa5to7iiIKuQXQW+KBqCUQgbAZNpsiHtz9eyF7ynA0eNrS7
         ecmg==
X-Gm-Message-State: AFqh2kqdl6dg81Gf7qoc8Kdt9nPTxqXf/XrJOndPD10Wxj+yCi6+RpjA
        hUfGdRHrV6M5i6uM5MiFXBynIxehtpX8w4m9ADmsTAnwQuNN3lHYtdNkQ1guB1scDQATQbyQkT3
        XVBiBPS19yq4b8rz4FuRycQ==
X-Received: by 2002:a17:906:b317:b0:86e:5124:20b0 with SMTP id n23-20020a170906b31700b0086e512420b0mr24453771ejz.64.1674402144010;
        Sun, 22 Jan 2023 07:42:24 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvxYtwlzriBymW6Z3D7aPp6YK0SgRgIwBhy9+XTG6Yr2FXU6lFqP+zhk9rsn87ItyMtBAKvXA==
X-Received: by 2002:a17:906:b317:b0:86e:5124:20b0 with SMTP id n23-20020a170906b31700b0086e512420b0mr24453748ejz.64.1674402143767;
        Sun, 22 Jan 2023 07:42:23 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id mb9-20020a170906eb0900b0084d34eec68esm19871820ejb.213.2023.01.22.07.42.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 07:42:23 -0800 (PST)
Message-ID: <efcca646-5dc3-359a-5453-2fe241af8f8c@redhat.com>
Date:   Sun, 22 Jan 2023 16:42:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 2/2] dt-bindings: display: simple-framebuffer: Document
 physical width and height properties
Content-Language: en-US, nl
To:     Rob Herring <robh+dt@kernel.org>, Rayyan Ansari <rayyan@ansari.sh>
Cc:     dri-devel@lists.freedesktop.org,
        ~postmarketos/upstreaming@lists.sr.ht, asahi@lists.linux.dev,
        janne@jannau.net, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        Thomas Zimmermann <tzimmermann@suse.de>
References: <20230121153544.467126-1-rayyan@ansari.sh>
 <20230121153544.467126-3-rayyan@ansari.sh>
 <CAL_JsqL+G=Cxkc2j_NowznpqNAnixrU+-6SdccFbpMaP6OYSqQ@mail.gmail.com>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAL_JsqL+G=Cxkc2j_NowznpqNAnixrU+-6SdccFbpMaP6OYSqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 1/22/23 16:36, Rob Herring wrote:
> On Sat, Jan 21, 2023 at 9:36 AM Rayyan Ansari <rayyan@ansari.sh> wrote:
>>
> 
> Why do you need this change?
> 
> The 'simple-framebuffer' contains data on how the bootloader
> configured the display. The bootloader doesn't configure the display
> size, so this information doesn't belong here. The information should
> already be in the panel node, so also no point in duplicating it here.

The idea is that early boot code which uses the simplefb node (no more
complex display driver loaded yet) knows the panel's DPI so that it can
decide if hi-dpi rendering / scaling is necessary or not.

This definitely is a useful feature to have.

I guess that for dt systems an alternative approach could be to
add a link to the panel node to the simplefb dt-node.

Regards,

Hans



