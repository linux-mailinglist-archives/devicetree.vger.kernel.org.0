Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2315B001D
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 11:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbiIGJNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 05:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiIGJNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 05:13:18 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ABA6A99C6
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 02:13:17 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso9117117wmb.0
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 02:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=CSO9AwE0C/yN4PM2scsoB6sKgJVsmbuWWguswOGRUaw=;
        b=kBOcO63I2kZrv7Hl18Nq2oCuyYAZ3HcpMs9YpCSOoQ4gSK0akZz9dLUyYxWG6PP7CR
         sVkVJqYMiZOH804v2OqETM0+OGBV4BVq96lF9Rhbel0V/BG59C3ynNuXjgyUfyVlq4Lb
         qduMC2cHAIfW69Qa48rkPSryRG2J/qO4taLIR2M5YNGQZdMnMgSGE4LnTn9i2veBjznu
         J2ih+pHhmNA79jRt4AFs1neg5lk42XGCz4mpLNBjgXxW4YRqjiNRy2E3d8po5CZQLPsF
         VEMMCP6bn104FG1iDfgn6Ksnz8imiy7Ek+g25//L32WLhb82zMdtFUTTB0d3pNIEDTT9
         NIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CSO9AwE0C/yN4PM2scsoB6sKgJVsmbuWWguswOGRUaw=;
        b=a47ofRT6mGNVAa5zwZyiTEk78QtPskDT2c+UTPx1/G4hFcq3/dn7zyfRyCR64vlF0l
         wbzwNel2azVsoLjJwQNr12ur410KW8MZ8QuvdCwxmXH+wi81S2ovLkbYpAAWWSZoNFcZ
         NOGUNCzRUDuR/7EyFd0ZPH9ZMDqkh3WfZ2dlZBsOR8hk6H/3NcAH8Mdj6l+1DkcvcRWs
         jcFu2LE8SoN6jwKiagHRPUcSnMpQ3J6ADStFocAum3HykLvhvQ5XFD5J1eqXWPZRjMJa
         9Te0iHaOKn1XOdLgOGCnp0enNiT/XelETeIJ7zOGxrikQDkaCDDedc2OY22BCSi+OtFy
         BTcA==
X-Gm-Message-State: ACgBeo1//yz5zD4NsFCNBIIUWkeXk4OI78ikYg5rlgVNoZ7hqY7ff8Vi
        ZTzJMeVKm+2HhJGnyt+La+EI+X96bacvSpk8knI=
X-Google-Smtp-Source: AA6agR5C9aqiM1cujxVGjNv0QPajHzT3E7aav6UUSWMk4PbpCDB4U8IMclfBdxJxFlVdB7AHVAqKFZhCOVq37GaWKrk=
X-Received: by 2002:a05:600c:3487:b0:3a6:280b:bed1 with SMTP id
 a7-20020a05600c348700b003a6280bbed1mr15724648wmq.111.1662541995334; Wed, 07
 Sep 2022 02:13:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:600c:a44:0:0:0:0 with HTTP; Wed, 7 Sep 2022 02:13:14
 -0700 (PDT)
Reply-To: stefanopessina14@gmail.com
From:   Stefano Pessina <murphyadebanjoeni@gmail.com>
Date:   Wed, 7 Sep 2022 02:13:14 -0700
Message-ID: <CAMX_UfpRF_m+4329oQcUQPe+wz=+3haZpU00zOyEiRrW3DRj1A@mail.gmail.com>
Subject: Donation
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5457]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [murphyadebanjoeni[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [stefanopessina14[at]gmail.com]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:333 listed in]
        [list.dnswl.org]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I'm Stefano Pessina, an Italian business tycoon, investor, and
philanthropist. The vice chairman, chief executive officer (CEO),.I
gave away 25 percent of my personal wealth to charity, And I also
pledged to give away the rest of 25% this year 2022 to Individuals.. I
have decided to donate $2,200,000.00 to you. If you are interested in
my donation, do contact me for more details..
