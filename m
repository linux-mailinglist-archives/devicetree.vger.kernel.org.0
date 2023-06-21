Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05F98738867
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 17:07:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232895AbjFUPHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 11:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbjFUPHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 11:07:31 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B7684237
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:02:22 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-341d62e78d3so27748355ab.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687359679; x=1689951679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7IWxGdoDKiSa7ojnAiaIyq/I0rvvq8Wnb8+SgCPyMUs=;
        b=ItMTpqJPD6cH7ewZK09P0GrNXqFi5PqYkirs210fdkC2ks3Jbkw3VLHSprGuO7SXxE
         0FuQC2RuxJ6ea+3THLwW+wpifd3C54RLVg/2SaL58UbmoO7BifQ7VSBwj2yy8dhY9syx
         x57+oZE+9VQReGZUWbzV7qZfTQk6FBIEWdsDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687359679; x=1689951679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7IWxGdoDKiSa7ojnAiaIyq/I0rvvq8Wnb8+SgCPyMUs=;
        b=XErwPndNf4mWPny2Es4d0Zb/vO/Vn+ysBoxHqJEzwiqQ18pVRoRqQTc2C5Q9upTXw+
         Zxy+Clz00fF3nKLjrdob1W/pIGLYShji0ZuXTyxosvE8fJdxpPgJG5pxmwbG27SLyvAV
         xtlyfRMgcVmJI6/TaCMV6iVOiEBQAvx1dW8KTJNQH7RqonS6FUFPqs4zHWauCXTNoa1x
         iPUBU9aBe9QozOhSt/8akl+g+lZ/fdYqDNxqOoUdd8HDmClS3WhvoHJuoqLwXAIwNpu0
         abTb5OqNxEzcDbP5MuoOGe4HU7HMQiDFcyGJc2U3/izDUKAFulGMcezBVZoEIy81F2IT
         /HTg==
X-Gm-Message-State: AC+VfDzZe6e6Q80lhh8x44vH+NSYZBHny3ShKoYCaguN1yLp+9vpIxI+
        5+//giR889R6k7FXWlJloDKt8w==
X-Google-Smtp-Source: ACHHUZ45VBIzKmJLKZMBeuzdUhfQm6mZzTfscWJvIov3rCk9qo0Jzt3rLev4OSyFRt+cvT5OoliuXQ==
X-Received: by 2002:a92:4b02:0:b0:33d:136f:249f with SMTP id m2-20020a924b02000000b0033d136f249fmr15308554ilg.22.1687359679475;
        Wed, 21 Jun 2023 08:01:19 -0700 (PDT)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id y15-20020a92090f000000b00342372e78f2sm1381026ilg.3.2023.06.21.08.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 08:01:18 -0700 (PDT)
Date:   Wed, 21 Jun 2023 15:01:18 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Benjamin Bara <bbara93@gmail.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Benjamin Bara <benjamin.bara@skidata.com>,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] usb: misc: onboard-hub: add support for Cypress
 HX3 USB 3.0 family
Message-ID: <ZJMQvpOYp1zagtE2@google.com>
References: <20230620-hx3-v2-0-76a53434c713@skidata.com>
 <20230620-hx3-v2-2-76a53434c713@skidata.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230620-hx3-v2-2-76a53434c713@skidata.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 21, 2023 at 04:26:28PM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
> 
> The HX3 comes in different variants (up to 4 USB 3.0 ports; multi-TT),
> e.g. CYUSB330x/CYUSB331x/CYUSB332x/CYUSB230x. It operates with two
> different power supplies: 1V2 and 3V3.
> 
> Add the support for this hub, for controlling the reset pin and the
> power supplies.
> 
> Reset time is extracted from data sheet, page 24:
> "The RESETN pin can be tied to VDD_IO through an external resistor and
> to ground (GND) through an external capacitor (minimum 5 ms time
> constant)."
> V_IH min is given at 0.7 * 3V3 (page 34), therefore use 10ms.
> 
> Also add USB PIDs for the USB 2.0 and USB 3.0 root hub.
> 
> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>

Acked-by: Matthias Kaehlcke <mka@chromium.org>
