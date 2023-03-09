Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB826B24D6
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 14:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbjCINCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 08:02:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231315AbjCINCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 08:02:05 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A8AF221F
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 05:01:04 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id by8so1728976ljb.7
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 05:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678366859;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dP+ewDGSKCxM2jcx4aWMWmyBv/FKyYjqa67/rDQKfl0=;
        b=ekd5CAS4KQ753h3434roSc0HkvfwGJolCWZjVytyL5kiVKrbVpVWNCsQPhUNxfv4Vi
         a+76S58yyL5aa0z/Vpb5i/SxppPV++0df9coVfITgXKFhO5CM6KK+Lp4BbeJeaD+tX2f
         UV9Am0YDYCxhtM88R1l9ef098J3KdDEaIP67f8fW0zI6Lts5kMBHpyNNO9DXyrQIFmSJ
         HEg0SP6WpowXpeDNgHRSa+ry154WJvZbp4qwCCCwhwo2WRWVXlv4McwoABUW7v9z0vxl
         CFOtzy6MgKHPv1hbceV/iym1KHbVs6FG+AplI+u9EymUHkeAhjwPq/kzCebPCLNasZti
         9MNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678366859;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dP+ewDGSKCxM2jcx4aWMWmyBv/FKyYjqa67/rDQKfl0=;
        b=jth7AlXRWkVUw8YfKr5wcWG77u5hurc3QGRQLLzwLb6mhRye2+P7OL0rKf7sQRJu4/
         L+3B9tCiUmZB+72CTZcuHgLudZnO7QdtxTR5DxaAwHQB5WfCct5EvlAp6jaLKduf/Nal
         hSW3E9Dg+loNnzBHCblPPZxHq753hVq/R/ZguBzlydlZsohRZZg2Cpu1x8OrewIn1tNA
         zKLSqzUJalH2zERbfq86pRev2RK2P7iA1FLDcPeWbFN0sQXHBZLtYkewtU/pHO0bqU27
         8hD/gF8JCKZYl6jibpM1APltfyYUms6k3eoPWSPIRNEckvyKTLl5HnJfxiQuFNkhFAdJ
         54rw==
X-Gm-Message-State: AO0yUKXF2sV98WyooPJ2/4CrMD/7gLJ/ZvcZoSqU88KQr9hxNjH0OP6i
        PEkOjJRmVLf8ParxNaclqYo=
X-Google-Smtp-Source: AK7set/RCdb8KPr3V3KAfiBQ+tLjvfioeznm4pMx9HBP9njhWt9JG0HJYASiCgT6w79py4S/REYoFQ==
X-Received: by 2002:a2e:9b16:0:b0:295:a542:8b47 with SMTP id u22-20020a2e9b16000000b00295a5428b47mr6014299lji.8.1678366859466;
        Thu, 09 Mar 2023 05:00:59 -0800 (PST)
Received: from smtpclient.apple (84-10-103-47.static.chello.pl. [84.10.103.47])
        by smtp.gmail.com with ESMTPSA id j15-20020a19f50f000000b004e7fa99f2b5sm2153733lfb.186.2023.03.09.05.00.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2023 05:00:59 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.14\))
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
Date:   Thu, 9 Mar 2023 14:00:57 +0100
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        lucas.tanure@collabora.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
 <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
 <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
 <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
To:     Qu Wenruo <wqu@suse.com>
X-Mailer: Apple Mail (2.3654.120.0.1.14)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com> w dniu =
09.03.2023, o godz. 13:17:
>=20
>=20
>=20
> Awesome! I can finally get rid of the stupid out-of-tree r8125 driver.
>=20
> Would definitely have a good look into the patches and provide some =
feedbacks, just mind to share a git tree for easier reviewing?
>=20
>=20

Ah - git tree... my distro builder uses model with: mainline src + =
patches - so effectively i don=E2=80=99t have git tree for this code=E2=80=
=A6

 =20=
