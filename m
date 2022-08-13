Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D703591C73
	for <lists+devicetree@lfdr.de>; Sat, 13 Aug 2022 21:58:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiHMT6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Aug 2022 15:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236805AbiHMT6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Aug 2022 15:58:19 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8EDD13CCB
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 12:58:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id dc19so7251147ejb.12
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 12:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=prDaPxbuhI2YkS3ImxvqrOYZkOiTsYLmxAEmCgtIlts=;
        b=sLfwXyQmojly/syV1/M+nIbRRfI+bvzJqfp15h7L2rghxQrWmiCPufxl8HX5WjOkJv
         ycW0hSQG6nqui8O5W7njuGHpg/+O0N3unv8qeb7vQxDThEfe3uYElyLhkWxeZ0/iIzLC
         2TbZzbzsH6onix6hw/OnpGviccv0xGSISZ+kw2m7Fg+1m4F7pRt7yT7SBA6POkVCoR2D
         QKQHi4aQT/rHGVMEC8o4P19mF1HpHUo51hC5PE01P7lBQhyLm/86j9r1C8dUEwIORS97
         y0pxW/NZXAQkI10j0y6sK16vBGseD+JzvHXpBb/X6uLxX4LtMZMpCGr+MYT1Bn8jF4Hu
         rHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=prDaPxbuhI2YkS3ImxvqrOYZkOiTsYLmxAEmCgtIlts=;
        b=FbQs4nPemC2ZANvqS+Or52/ezdwSrOjDmYLMlFl+bFfncZlzbQrgZGPNCGf9i4/8JB
         UdfQnL5VfYCDwVM2zVhu6sSnETuCUIchsLR0GlazadeErVUYGCboJNVvPv1HF92Dt9tI
         F6ZKleMDoXvL752vQTaFI0MUrs6of9xF3yZXk/j5Zkg2gUV5+Jbp5j9zfcPFOKFgxK88
         I5sDrwDAE9/K2fUpvXklH4P4cDMF8JS7CDWRh9lguaRwIpmn8tzap5pACRrB6TRirf0e
         wnd8FlduNowu3hy4APzqwIpygVuFvz5c3WF1U4U/jNI2qgtt6drc867qiM4Z5PgWfV0Z
         4nUw==
X-Gm-Message-State: ACgBeo0PGS5ovTDXBv1WZOerkKHsVrvWO/wFpQGgNX3AzSHF0G6Aqe9P
        XT0aaAJN95hYk0XA/8im2URl7MMQuteD3sGVLR+9kw==
X-Google-Smtp-Source: AA6agR6IfXdCivSE5cewvCGmPnQIwg1jOepXajVT2A87FTuCTWHbrrpeT53Y4tfWF+it90w56+o77Ec5RRPGCJwQ7AE=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr6312577ejs.190.1660420696554; Sat, 13
 Aug 2022 12:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1660337264.git.jahau@rocketmail.com> <57236545107286771d351b95091bf56815d3717d.1660337264.git.jahau@rocketmail.com>
In-Reply-To: <57236545107286771d351b95091bf56815d3717d.1660337264.git.jahau@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 13 Aug 2022 21:58:05 +0200
Message-ID: <CACRpkdZB_JLJcCNAop-bnRG85Nid8MpJDui=RDNaxbebZuD=Wg@mail.gmail.com>
Subject: Re: [PATCH v6 09/14] iio: magnetometer: yas530: Introduce "chip_info" structure
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 12, 2022 at 11:59 PM Jakob Hauser <jahau@rocketmail.com> wrote:

> Introduce the "chip_info" structure approach for better variant handling.
>
> The variant to be used is now chosen by the Device Tree (enum "chip_ids"),
> not by the chip ID in the register. However, there is a check to make sure
> they match (using integer "id_check").
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
