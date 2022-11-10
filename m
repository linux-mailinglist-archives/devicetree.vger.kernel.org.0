Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D221D624ACE
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 20:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbiKJTmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 14:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbiKJTmF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 14:42:05 -0500
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1088E45EFF
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 11:42:05 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id j6so2125427qvn.12
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 11:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I14jUTIPc1scT+nde4x8Oj7hxEJEY2JFaF6MXSIw+Ic=;
        b=JhJY1PtOXBO91NCHpBdyGtb4/PuHiCnMJWzvDbpjRfFSvMQ1/YPrS52Tkepy2FoNRa
         GBCe8bG0/GMWjhx7ZZw8kpPaJ6QLrJS9FYmkKQlM5YkjOc/MJilazl/3mJf+dRmrNwAv
         UnCIsI9JTLKy75WqZ5bHptTbVIyi6Sd5WQxfktShOHgLSNGOoznRA0NIglf6XnP8ucc9
         6o1aYwcIqoh6A82E0lTPiXi5Omr9YY4AtIa2ULWyQZzIcZOqxV+IVUrPzwz2BbvUdidm
         YvaqmSUkSvHj32ueonIyev31Y26TowmK6oAec8TWfB8ClzNOr6g6rIRNo/po4noaSjUS
         vK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I14jUTIPc1scT+nde4x8Oj7hxEJEY2JFaF6MXSIw+Ic=;
        b=LKt8Qx/0CcXWWFoYOxBTbSNAu0dsGH5p8dFA3hcNwNXdFO+00GjCPtakzNMsCuWML6
         RkN/DMGakCixpYWXvxMby2jbcteVbqbxaKmrIf6S6YZFtIdPFxdFJ6y4DlXyPtGZ0A+M
         EgWdeyJkDScFxeKTlW04FFe8oma/Hix7ZXgiecQjhaSvsUe7dAZLnrWxYPyDynZkI4a4
         bTWept4dfX7fToYeChRtFd/K2PGO1hbBzgrlNyo+vos7QPcUVySH2CHy2zMPFbcuqwz1
         HacsyRJYQCNcqULhO2Vc9jS5+UeFHkp5NKT3fPSMsyo/B9Zq92DJMKj5TFBiYfGFZGiF
         27aQ==
X-Gm-Message-State: ACrzQf0Zb6/ZABK6QVM2FF+fq5y6TtyNcl1gqxFh10JUJc6Y5kXOES+H
        7Sr+BgVOItpK0E4RcW5jUnU=
X-Google-Smtp-Source: AMsMyM7NWBFG07qNCp59pFy+Spuai/B2XJakEaKNN5gtMjCDFreA/T5hrH6EDos3uuiqztRUuDVO3A==
X-Received: by 2002:a05:6214:27e6:b0:4bb:bf01:b52d with SMTP id jt6-20020a05621427e600b004bbbf01b52dmr61098461qvb.85.1668109324131;
        Thu, 10 Nov 2022 11:42:04 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k15-20020a05620a414f00b006fa4ac86bfbsm121678qko.55.2022.11.10.11.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:42:03 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Alexander Dahl <ada@thorsis.com>
Subject: Re: [PATCH V3 2/2] ARM: dts: bcm283x: Move ACT LED into separate dtsi
Date:   Thu, 10 Nov 2022 11:42:01 -0800
Message-Id: <20221110194201.1730564-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221110173105.6633-3-stefan.wahren@i2se.com>
References: <20221110173105.6633-1-stefan.wahren@i2se.com> <20221110173105.6633-3-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Nov 2022 18:31:05 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The usage of the label property for gpio-leds has been deprecated
> a long time ago. In bcm2835-rpi.dtsi the ACT LED uses such a label
> and derive it to almost every Raspberry Pi board. Since we cannot break
> userspace interface this property must be kept. But we can move the
> ACT LED into a separate dtsi and include them from the board files.
> 
> This change have two benefits:
> - with both new refs it's now clear the LED part is included from a dtsi
> - new boards do not include the deprecated stuff automatically
> 
> Reported-by: Alexander Dahl <ada@thorsis.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
