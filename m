Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58FA15B17B0
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 10:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231797AbiIHIvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 04:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbiIHIuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 04:50:20 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C45F7B78F
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 01:50:07 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id l14so12956504eja.7
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 01:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=WMhbAW6ivSWxO1i+m/3wyAD4zuTeeTrzwKhwkZtcXKI=;
        b=eoRneGEXV3QMaXSAPgcYViEXCNr/UILb0Ct655dyyXpzsWeAHsYB2qLaAK82RoHR13
         QUclAtnteZvK9HwN6l+IZaEnV0Fk64xvTLX6hY6vtEqSS+WI8JCVwpGHck4ftdxQQXCm
         YSXiqCszF3n44FbdSOzNSh+YITfB6EQ+p8J0qw+COmV+QVwM0rbS1euG+s7swwQW+fLM
         3hK9F6pKaDi+AIvaXBc9IYGijO7S16PI9LyO7JjtW0Edp62XvlhNAL+mo9dKjZrrqBbt
         w+UydRjrtk5lBWtOyUgq1yx9XZdKwNJxY3tambaA8kBdxEnNRFrIBYObGwCQxBz+AmGk
         B5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=WMhbAW6ivSWxO1i+m/3wyAD4zuTeeTrzwKhwkZtcXKI=;
        b=vfjvw221IEcPeOzL3mim+H49qkVaX62wL4Notq+1uUyDLtBMGX7WL5RHM1MGo2iXAo
         B6n6NMt2UB/ufYaGi3xhjvtyYGNYIggsSM0WpS6aMK/H5JFwv9X3R6SKiwTYj9NIXeJc
         TcZ0z2Fbf3nU5SOgFxiwENxkwrOPA+sYmbY7mFa4J5k+kF1fTkm1dqdj+IbVLYUVlXmT
         xBB6Rbs04gpILtvJ2PjcoaHSevLqMjWVGym9RUrtgSGQpsoPPT7AKNyClGDqKBljrNj7
         MGAZ4Nn7uCSDNDqG8tX0iYFcr97M5ys8yqVMZ/p/ueZFHbiuOEzzCXStdjHB3j4ruYlA
         Ppag==
X-Gm-Message-State: ACgBeo2YS+YHZH5FF3R3hVFhldB+KRyvMw5S1LHdyOqHqfd4wGFvcccG
        U6AyJ2RrqaSagt8kiajjUK4rgSatO5Fx3kmT4Gs=
X-Google-Smtp-Source: AA6agR5H1NvETUm/97Rq6tgmsHJS8Oxmr64SQqSP0axJ4VNaE+1rxqNI2Ch4QvEzC5Q2Nr8uBeKbeOhA6CGf70wL/KA=
X-Received: by 2002:a17:906:8462:b0:771:b827:956 with SMTP id
 hx2-20020a170906846200b00771b8270956mr3157166ejc.524.1662627005600; Thu, 08
 Sep 2022 01:50:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:31cf:0:0:0:0:0 with HTTP; Thu, 8 Sep 2022 01:50:04 -0700 (PDT)
Reply-To: stefanopessina14@gmail.com
From:   Stefano Pessina <consychika2020@gmail.com>
Date:   Thu, 8 Sep 2022 01:50:04 -0700
Message-ID: <CAHX4XTMmC8KYrUX9ND8JWaJhwk1krrBh0KYKADVBZyZrFe4icA@mail.gmail.com>
Subject: Donation
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MILLION_HUNDRED,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,UNDISC_MONEY
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:642 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [stefanopessina14[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [consychika2020[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [consychika2020[at]gmail.com]
        *  0.0 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I'm Stefano Pessina, an Italian business tycoon, investor, and
philanthropist.the vice chairman, chief executive officer (CEO), and
single largest shareholder of Walgreens Boots Alliance.I gave away 25
percent of my personal wealth to charity.And I also pledged to give
away the rest of 25% this year 2022 to Individuals.. I have decided to
donate $2,200,000.00 (Two million two hundred thousand Dollars)to you.
If you are interested in my donation, do contact me for more
information...................
