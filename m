Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C043458CE7E
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 21:19:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244305AbiHHTS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 15:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbiHHTS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 15:18:58 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F4032A2
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 12:18:56 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id q9-20020a17090a2dc900b001f58bcaca95so8705839pjm.3
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 12:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=L1vC5R5YRVDMXPDH+NOmmzYAffT011Zf5qHIpaSkIDg=;
        b=NKZvuR8iNR3x3TearM8MpLRex8/AiPuciaQXaCmUSb/yVHV6f94LrLuUKXanVXMHHk
         EvLTCQEYUTERn9srXXgeT/dhceYNgBs0U8GOoh99O/juz3LqeMSY0xHyFISs9PjFLK72
         l0O3COR37Cjx/PvWJkYH1382o8u85/XcgH6tGTed0ezpE0X1Xufz/zaxcj9t+3H7jfS5
         gapgOvKKE1dVj2ZbHZNTXJS4bst3UfnqROAmPUhWt6gN16hs6N4zmCaWBeUv4ggu1+uT
         1wl3dZ1JGSmJd6dIOf81c3psSbMP6iYp6pMhsi+IUokxCyvUmkaEMeGBzOFoTvClXX8t
         C64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=L1vC5R5YRVDMXPDH+NOmmzYAffT011Zf5qHIpaSkIDg=;
        b=Pv7WCdva1bhv3DZ+m566sEGjgoy44q1TT/dyOq1KgyObO2SqOxrGU8PdS8ElLdHJRT
         74MmqhZUOJAmhN3/cG6l+KHvQUNN358kmUXdmKeL7fkp9EARwdVZ+s2keu96Ld8Y6+Ec
         zPOEdcyseJlmVXZi30N3e+o1eu9Vfkpe8PPTjdcCAdGlIZtbpARkQJc0aN28s6xZXaf8
         IdFZ+6cGar4rp8eo/W9BQAQAh241NwUDw2bDDW+JXXRwZEl4mXfZ0F4uirg5b0GFC7Xs
         Ktz6MZASWWvFmssFvR0emO7d7NFhDqmtPs7TMC9Q8ZpG/2oGdyU8vHvOs8Fb0k/gJhoB
         qZGA==
X-Gm-Message-State: ACgBeo2w1a19vtST+CHyOajaHES/eYws8/TJ//CPBqlRexvdS9VSlx4S
        u6XgRxas2ph2IZuKpTCDJ2/tuFYQ3wRiG3vuwu5cHPvf1y9gIw==
X-Google-Smtp-Source: AA6agR7lCOkO5x+WRSnUaTgYhR/py/8C9CwUsLFoPEOAXdZ6LjzVs/E/Y0R+yHYCvghw0L0ChhAW5o5Khe9cRt8OqSE=
X-Received: by 2002:a17:902:694c:b0:16d:cc5a:8485 with SMTP id
 k12-20020a170902694c00b0016dcc5a8485mr20017314plt.90.1659986336483; Mon, 08
 Aug 2022 12:18:56 -0700 (PDT)
MIME-Version: 1.0
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 8 Aug 2022 12:18:45 -0700
Message-ID: <CAJ+vNU05_xH4b8DFVJLpiDTkJ_z9MrBFvf1gSz9P1KXy9POU7w@mail.gmail.com>
Subject: ethernet<n> dt aliases implications in U-Boot and Linux
To:     netdev <netdev@vger.kernel.org>, u-boot <u-boot@lists.denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings,

I'm trying to understand if there is any implication of 'ethernet<n>'
aliases in Linux such as:
        aliases {
                ethernet0 = &eqos;
                ethernet1 = &fec;
                ethernet2 = &lan1;
                ethernet3 = &lan2;
                ethernet4 = &lan3;
                ethernet5 = &lan4;
                ethernet6 = &lan5;
        };

I know U-Boot boards that use device-tree will use these aliases to
name the devices in U-Boot such that the device with alias 'ethernet0'
becomes eth0 and alias 'ethernet1' becomes eth1 but for Linux it
appears that the naming of network devices that are embedded (ie SoC)
vs enumerated (ie pci/usb) are always based on device registration
order which for static drivers depends on Makefile linking order and
has nothing to do with device-tree.

Is there currently any way to control network device naming in Linux
other than udev?

Does Linux use the ethernet<n> aliases for anything at all?

Best Regards,

Tim
