Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9037513CD6
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 22:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351908AbiD1UvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 16:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236992AbiD1UvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 16:51:19 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98DB7C0D31
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 13:48:02 -0700 (PDT)
Received: from mail-yw1-f171.google.com ([209.85.128.171]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MgwBv-1oMmT72qej-00hKYk for <devicetree@vger.kernel.org>; Thu, 28 Apr
 2022 22:48:00 +0200
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-2f7b815ac06so66252747b3.3
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 13:48:00 -0700 (PDT)
X-Gm-Message-State: AOAM531QDdUUban8V9crGr8fXWnLIx4SwHR1E6rkF8Q5CUEdKQXMQ9GF
        84Rym38Pe+dWuFRpaFzyuatrBsU1paYqmzHEvf8=
X-Google-Smtp-Source: ABdhPJwwrdVTuYv//nRPW9fNDE9Rr8o8BYq06TKXNGJU2kXtWtzvORA/cpH7FQOL1pHoe/faBSaozhss7bne+khipgo=
X-Received: by 2002:a81:1dd1:0:b0:2ea:c38b:65a8 with SMTP id
 d200-20020a811dd1000000b002eac38b65a8mr34417764ywd.135.1651178879470; Thu, 28
 Apr 2022 13:47:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi> <20220427162123.110458-2-maukka@ext.kapsi.fi>
 <CAK8P3a2renoWK+rUYBAyUb10v-TKfv6gLTQUiGFRroFgLCv+9w@mail.gmail.com> <d8ab7986-c0a8-e11f-3599-a09c2938d936@ext.kapsi.fi>
In-Reply-To: <d8ab7986-c0a8-e11f-3599-a09c2938d936@ext.kapsi.fi>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Thu, 28 Apr 2022 22:47:43 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1P0y9rKDbXbUW9GCyGg=4hT+XYPZt3HKoWRGoBiNfKSQ@mail.gmail.com>
Message-ID: <CAK8P3a1P0y9rKDbXbUW9GCyGg=4hT+XYPZt3HKoWRGoBiNfKSQ@mail.gmail.com>
Subject: Re: [RFC RFT PATCH v1 1/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:kL9P7t//1o3ue06qNsdw6cJr3tgFFu7s2WRmMGTc5Mb9rOMy3Ug
 KOBonHLRSdkad6haaY8UXQ384tKmexrT/VdCGcOOMfmUEunSo9CPofP0Ob39ZT1cYoDpHQD
 u3D6qAvIvWun70Kxbeoxr+tHJmvZJVVUiYmFUg06ngrQcNBHiljZkPT38/Hqt01PS5tSWCO
 RUBgdnQmzQzmEboZOYtlg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5UdSc8C3WuM=:lzKJ6DYhq5uGkPaMveDSEy
 EIU6O6g18kfTZnKqrqAbing+KJbPVCB+EiMEofnsn5edyabnOk1sDAVsHVefXRfX0ojSURE6q
 nvcRLVCZ4auNPoLdQIPiONjUyWbWezl9laGWmvQb0FLVQkRBDz94z6m0KQeacYOZ3AIMjz0tT
 S2muBZD1u0q0rxDrz2UhRwk7T3mJd8HiFJNthsKHOrPNNH+Ch9E3KUP5kZue7xEofW69GNzby
 P0wXz1YwCthjzSqgHPl6fu+WrnJyZTsdMx0UIrsP4XxpUFzY3c4t/tm1KLp/+axhpN7UFdZ0z
 gzNMVl96xib2JxKoyyo83BnF5ja4QhZBVPNuphMe1NoIWtBH8+tc9YastwjQulj+UwKIO1C2o
 Wi2TBuFOwn0VcRSkZ1rA3BgpUIJNPqbgk4VGzmawe/+gVsX6frahtkIY+m7nWX4UPEyer5YLQ
 1eWJR2XAIaROQzz0Bs3a/aN79eLO+BWN3fu7upship02yoO3ouZOOc2wrHXczsMDuKquNTHo6
 6SHBGpLMBzI3ReP1B1BcLzazMX1t9YdIQjvLQg1PT+8LtpZTCvbHImfJN9fQe+746hBQyhOtW
 s3s9Zo43aA22kqFxNUQFwFgqKCKuLE3DQOQtfIs9MgbslOaoQt6dvfH9Sndp6ON/NGUyEzcsB
 gc/QgLxeS+6Ptn6ooR6NqGfiQxeAlTsbTYn5aOReMSxTEguNM9Mx5MbAEoOOY1IceZKM=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 28, 2022 at 10:06 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>
> You know, I had them initially in separate patches but then I looked at
> the existing commit history and at least a few ones were in a single
> commit so I merged them. :)

Just for context, we sometimes do a mass-conversion in a separate branch
when there are a lot of changes that touch both DT and source files.

If you only do a single board, I would not make that a separate top-level
pull request, so it has to fit into the regular branches.

        Arnd
