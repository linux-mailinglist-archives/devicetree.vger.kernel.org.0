Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5716E2F463F
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 09:23:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727040AbhAMIPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 03:15:32 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:44382 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726889AbhAMIPc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 03:15:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1610525646;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/1vAmJrhkq2OfagK3P6iEhed/uMIynZjuQhF3qxhH8o=;
        b=Yo+IX3PAvj134ldCL90Fgk0mR0gEqF6wzHuXbjX161G0ZHWFipEIhPZhpTSFGOiYa/0cWb
        dpSDoV7WUfiq2mrvimOuuWfLF8lFW+G3eALDdCEzPk/bdW56R/vQdamesFxtW2rTy43fi0
        Js/6SB54xR2C9wfnxzn8H+vyMrsHBnQ=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-zVzSjjaTPGWKjEQvQC785w-1; Wed, 13 Jan 2021 03:14:04 -0500
X-MC-Unique: zVzSjjaTPGWKjEQvQC785w-1
Received: by mail-ed1-f72.google.com with SMTP id i15so508275edx.9
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 00:14:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/1vAmJrhkq2OfagK3P6iEhed/uMIynZjuQhF3qxhH8o=;
        b=JTMwlos22rJ8j5ml6hrsJeF6wLdaFmaSWyqtBil9GTxRN48cDnHpbaPeU6K4jqq9+a
         6FioxGj4vBXB2c+qyf9ecswcLhWY/qEt0jNtD2dihd8yrQltOuMucd4kOhEuwyiXqmQk
         s8CfGqvW6Ekh372G8VI9p0Ku6dlCTeaFOADUdC/oMDMZcTTOvBStpXFCcL8yyyXUSyRR
         S967njyKeyHLAzAFBBjNfVCdSVZ9XTpYW7EIMnofLtHO4MN3j/aDUexkjhXIQ2338uAl
         63jbepPvgmVyumfe/3NEUu21usjjIJNg3eqIIjzNwvcBvlxu3c3mKg49oYy3xcvFGrfa
         J61g==
X-Gm-Message-State: AOAM531DBpp/K30gwhzU7OFVOkB8L1tpY+85Lu2Sb/Ln4fotCPRK7hid
        rUCsuhB2OB0nHisfczuYh7cjUwYVU8FpWmlb+pSDiJqufkGKcakta/v2BUILArD3CbyILMu3Uly
        5gCtBlyd2vopa4rDKzyoZqw==
X-Received: by 2002:a17:906:59a:: with SMTP id 26mr685054ejn.309.1610525643081;
        Wed, 13 Jan 2021 00:14:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzpBbPK2it/e3/DMPj561v1NJDrZUmv4OrQR0EDu4qwYEu5NzUyBMJt5+9U1Ocwv7e2f0fGdA==
X-Received: by 2002:a17:906:59a:: with SMTP id 26mr685045ejn.309.1610525642945;
        Wed, 13 Jan 2021 00:14:02 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id x17sm482923edq.77.2021.01.13.00.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 00:14:02 -0800 (PST)
Subject: Re: [PATCH v2 0/3] PinePhone volume key (LRADC) wakeup support
To:     Samuel Holland <samuel@sholland.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
References: <20210113040542.34247-1-samuel@sholland.org>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <45344b30-b784-c3d3-e8dc-d2a562c5cb83@redhat.com>
Date:   Wed, 13 Jan 2021 09:14:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210113040542.34247-1-samuel@sholland.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 1/13/21 5:05 AM, Samuel Holland wrote:
> This series allows the volume keys on the PinePhone to wake up the
> device. As pointed out for v1, wakeup should only be enabled when a
> "wakeup-source" property is present, so v2 requires DT and binding
> changes in addition to the driver change.
> 
> Changes since v1:
>   - Add requisite DT binding change
>   - Only add wakeup capability if "wakeup-source" is present
>   - Warn but do not error out if setting the wake IRQ fails
>   - Add "wakeup-source" property to PinePhone device tree
> 
> Ondrej Jirman (1):
>   input: sun4i-lradc-keys -  Add wakup support
> 
> Samuel Holland (2):
>   dt-bindings: sun4i-a10-lradc-keys: Accept wakeup-source property
>   arm64: dts: allwinner: pinephone: Support volume key wakeup

Thanks, the entire series looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

