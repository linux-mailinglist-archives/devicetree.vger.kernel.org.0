Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2773A6017B4
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 21:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbiJQTcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 15:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbiJQTbx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 15:31:53 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61AEC1AD88
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:31:06 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id u71so11352503pgd.2
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hlqix8SpPGpCvstB1gei0oEfDOFdG+727dMxYn4uTsk=;
        b=srNDKP1AVwM6+k/n0oxC2o4FRI8vdwDi6r5/Zn90HEIh8qX4SZrYZMrXPoqzdkU2AV
         3W+RLMqyBRZzQHmPDPu90WtMQPzlvrvvtfe03M9TNSyMgWvcFbbHGzC1TKcCC+pEXL8+
         N77ai/aYRejcaBunbIJnw31Vg95O9VqKOAXtgPenXOv7XrhYxJZu3kRY47AWcb0cM1vV
         4WT5IRtM3O1M2XCJCjspXWWs5dGw2z475q/Nw2Il9kchl7XRL1OG8XOhKi8LohFNCGvX
         vB/N3O369XwDLTtoVIwbJGJQAqOCS4lbbcHhx4mjYKNVFEZ4bqB8yC/qOu9nlWno9G3a
         dh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hlqix8SpPGpCvstB1gei0oEfDOFdG+727dMxYn4uTsk=;
        b=QBNE5Y0Qc3XZ8CagYBRKIYBfZBC7R9eXxNgSri5giZW26AbD20QWp9R8Z1AxTGmz+o
         pjji/a8x461fPzhpeJ9OSaD4JpGJlp/nV62M+Lr8fXQai/Ui057uWdGtQaz6gkRi1uLN
         IGzp7s+apmm0WQ6GCsl57TwjpL0bFQiaFqkDR40RQmT0BHT4sF9H5Qg1+OWGw37lfdHQ
         bbxdnHf3d2eJUuNZMIvMMrF+fGWaI4ufmtE/pfOnUYigloTyeovGvbXAgUk7FNlIGUY3
         GJ2ZKdNDKq3dA41eecvMt6b3lfnbygHWFMzewAMDyUDiHiHV1gjuQBiHZF/25Y4Ia05z
         y5/A==
X-Gm-Message-State: ACrzQf0K10kAD7InzKiKyQmHYG6MsrAnLjxEnyzniFRhxZ6pj8zuBQHg
        hJ2w+gUPuqS6QSAh4bGhnvUnffEafGxOl0t+c4v1vA==
X-Google-Smtp-Source: AMsMyM7aUu530+qzp0krwQQ4xYe2JE2izbjFZ3FahvhCmpuR+65lx7WcViWo5dqT6/jZejDl61UT4XGdHUNFSijTZS8=
X-Received: by 2002:a63:1508:0:b0:438:eb90:52d1 with SMTP id
 v8-20020a631508000000b00438eb9052d1mr12290101pgl.252.1666035064897; Mon, 17
 Oct 2022 12:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com> <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
In-Reply-To: <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 17 Oct 2022 12:30:52 -0700
Message-ID: <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 14, 2022 at 7:18 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Alexander,
>
> On 05.09.22 09:37, Alexander Stein wrote:
> > +     pinctrl_usb0: usb0grp {
> > +             fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC        0x1c0>,
> > +                        <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR       0x1c0>;
> > +     };
> > +
> > +     pinctrl_usbcon0: usb0congrp {
> > +             fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10         0x1c0>;
> > +     };
>
> I am wondering: You can mux for MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID,
> why did you decide against using the hardware function here?
>

Ahmad,

The IMX8MP USB OTG_ID pins are internally not connected. I can't
recall where this is mentioned but due to this they can not be used to
select host/device mode.

Best Regards,

Tim
