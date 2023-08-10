Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53084777727
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 13:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235331AbjHJLfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 07:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235325AbjHJLff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 07:35:35 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F7BBC6
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:35:34 -0700 (PDT)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7137141BF0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1691667333;
        bh=2n7sB/P+MVxtCrGdSlK3vHO7bX9b4hfYELYwbpKXbRE=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=E5B/sVx5M6ziVs+k7F8P8onXPUE3All9dtxryUQ04dpn/UJb8IAvMF5ojpD0G5sGd
         yVDmL4WOLTlcvBsI8P1hcWkZKe5uK+sxpUhssoG9+op9xZLhmpsaOEDHWnUmOZAOL1
         ZP8i3RvH/9VoZGs1NXTCWq5eO3Go/S13W6gruXZD61QW1GeKHtmrbJ57E034py+eaX
         WN4ZJtMmV16Uri/HahnEqTJtkr7BRE8Px0u14tJvqbSAtd8Bi0Lqpo4gJE+k3rXCV2
         UqhkNljLS8BJLwFfo92bAymBuDpMO0MOgTwaCYJtuzE7jFbLGHlyh8M0p3bPCjeybu
         PjCxOT12Y84BA==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-40c10c73650so10292381cf.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:35:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691667332; x=1692272132;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2n7sB/P+MVxtCrGdSlK3vHO7bX9b4hfYELYwbpKXbRE=;
        b=UUCKzHl2yERd1rrb2U5qKhDxlGRJRp4cYY9uu/PNOGftNj3Y3Q6TAQnMX0v4N32cd4
         wZe38aEExcr2H11s8jmE/oQY/r/cQDAIwOsSkCSFjj8g76JU7I5o7TUKTadVCOVYbzaL
         20RGgBtdw/NF11MdtmTyblneAGyvPHFQMN+FWYMeMSNe035xlBDo2KeJSsK0l83Q7hej
         9wk53qF/BU9F+oX9eIEwaWsjBpQVs9cv3bTajs7HJaJ8ly0ihOxB+WjxksFyp8Dqb/05
         Q+tsUpTGvStstsHpqpz+dCnYGPWWmJrMAjBQyIM1B0B7xwz31FvaOWB34crwr4yTqGzH
         Bn4A==
X-Gm-Message-State: AOJu0YzVrDSeMCTTKD3EW44EVf4CoenlYDQQ6VcPftrMar1o0bPdaokK
        MynAsbNrKVoIwhvNEuaXxeNyLhT88rB8AqgeY5nHWY5xzXZGc2SFLjHKFgho6H6re56PMaGh6uB
        cj4GPagfSxY4zL6Rd/nYxF6JnDXlTUQv8sgHZqX6c176PbvVvtPBh9UA=
X-Received: by 2002:a05:622a:1648:b0:3ff:c677:a033 with SMTP id y8-20020a05622a164800b003ffc677a033mr2266445qtj.29.1691667332578;
        Thu, 10 Aug 2023 04:35:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8D2jRMka03WDcJfPuExlGjBBiL8v0s6iUaabJoidV44if4B92MIxNJM8K0yJh2I2+HR7DBIjvEpbhH7u6S8Y=
X-Received: by 2002:a05:622a:1648:b0:3ff:c677:a033 with SMTP id
 y8-20020a05622a164800b003ffc677a033mr2266430qtj.29.1691667332353; Thu, 10 Aug
 2023 04:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230718034937.92999-1-hal.feng@starfivetech.com>
 <20230718034937.92999-4-hal.feng@starfivetech.com> <20230718-progeny-edge-70b1a395f2aa@spud>
 <e63baeee-134c-db4f-f350-b3526a0ae571@starfivetech.com>
In-Reply-To: <e63baeee-134c-db4f-f350-b3526a0ae571@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 10 Aug 2023 13:35:16 +0200
Message-ID: <CAJM55Z_p4rFXVOUvXKRPH1r7KSXkVbSNtZAGA5Dyzw7TNfuLtA@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] MAINTAINERS: Add Hal as a maintainer of SFCTEMP
 HWMON DRIVER
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Jul 2023 at 05:24, Hal Feng <hal.feng@starfivetech.com> wrote:
> On Tue, 18 Jul 2023 15:20:15 +0100, Conor Dooley wrote:
> > On Tue, Jul 18, 2023 at 11:49:37AM +0800, Hal Feng wrote:
> >> As he is the submitter of this driver, add his mail so he can
> >> maintain the driver and easily reply in the mailing list.
> >>
> >> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> >> ---
> >>  MAINTAINERS | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index aee340630eca..5056079ade77 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -19256,6 +19256,7 @@ F:   drivers/net/ethernet/sfc/
> >>
> >>  SFCTEMP HWMON DRIVER
> >>  M:  Emil Renner Berthing <kernel@esmil.dk>
> >> +M:  Hal Feng <hal.feng@starfivetech.com>
> >>  L:  linux-hwmon@vger.kernel.org
> >>  S:  Maintained
> >>  F:  Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml
> >
> > Whatever about the other patches in this series, this one certainly
> > needs an Ack from Emil.
>
> Hi @Emil,
>
> Would you mind adding me as one of the maintainers of this driver?
> Within StarFive, I was appointed to maintain this driver.

Hey, sorry about the late reply. That's absolutely fine by me.

/Emil

> Best regards,
> Hal
