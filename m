Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5337C4DBC17
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 02:11:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354345AbiCQBNA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 21:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356568AbiCQBMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 21:12:54 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FDD11D302
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 18:11:39 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-2dbd8777564so43307427b3.0
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 18:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HihXKlHycjx4RswzLPo//YprAlmxVU5qmWi+4h7HrVM=;
        b=g7r7I95UXH97tR/0xx/CeaXFKin4xe7Fhjf/ILcQ2mQpd2wG2TAjOR3CEgBMIMUWbN
         z5dl3wI9u0+8RPblANkWrUypLbH6BnYWhnCHrEGuvOdZXJgtsNFHY7POvvDqFrYTBwXH
         4o23XQt/4em5W5oEIUXcIuQT0mAx/UeqTNsbl6l6ZLEzFoF3bBVBNvrU2d6kuNzfdNxw
         jY4mlT8JSf1WMIugg+dQN+EFs2V1jBMOICUADe437wdEmzwUsxzegeq2RSeyRVjOxfsm
         12ZnpV8Uhwl989A7k+l5iTYJFxi1l9Dkx+y/ldwoXePCzh9IzELS+67vAmlKy4c7AClH
         qX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HihXKlHycjx4RswzLPo//YprAlmxVU5qmWi+4h7HrVM=;
        b=2G1J2zcfJlUr3T5LnImOm+b0n+fkxacTKOe4RmOJzCG6IaDth/HZ3Z4WROuOETfzOt
         nET5sd/1GXiP5IhZeoRG1LItEkPwgqd2TS5c0q637E78QRJKAvuz5asmvNPHCxys0hKo
         VoVvZHynS7D6iw6ajiJQYcsbxLixKBgWKLie+iorWQY0rsAoPzwCtNLe0ggG7Ltd74T7
         N4dWLhQ24n3IOcMpcQn0fG8HHKnh2wZcZQRDHKZYh5zOUjL6+VhXIZgshJsR9J+wVlqE
         /1WMzdiAMvVfiy/pgxQhVOO7xLVw7kSTGcOAaARs8W/+Z4NOgokM33VEQ+gp3bQFt2o+
         rjbw==
X-Gm-Message-State: AOAM532dQvlAtq3g13NHGgJ63mrlL4clWw4GgkvqDetunNnVJYmzRdag
        TlZXM1+JNJF7ItVVtGWM5QARzncSSNe/xJgh9kamXA==
X-Google-Smtp-Source: ABdhPJyWmAaWK1aeShbp3JXnJNVTEdEba4dWiBZbV73y0uTMQXzTrgv3goP2pT+5pEG0BKeuQMivJDtEifudSMlU/6o=
X-Received: by 2002:a0d:d68e:0:b0:2e5:9f48:a24a with SMTP id
 y136-20020a0dd68e000000b002e59f48a24amr3230663ywd.151.1647479498884; Wed, 16
 Mar 2022 18:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
In-Reply-To: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 17 Mar 2022 02:11:27 +0100
Message-ID: <CACRpkdbFNLLve1-JntNW=eMT9ivZTZHBk-xpwK6w-kE0fczr+g@mail.gmail.com>
Subject: Re: [PATCH 0/5] Fix AST2600 quad mode SPI pinmux settings
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 8, 2022 at 1:37 AM Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wrot=
e:

> I=E2=80=99m sending this patch series to fix current issues in AST2600 pi=
nmux
> settings while enabling quad mode SPI support.

Patches 2 & 3 applied to the pinctrl tree.

Please funnel the DTS patches through the SoC tree.

Yours,
Linus Walleij
