Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F33B6B1FB4
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 10:17:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbjCIJRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 04:17:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230259AbjCIJQq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 04:16:46 -0500
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4568DFB49
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 01:16:28 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-536bf92b55cso22945867b3.12
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 01:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678353388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O4oOjO1iZqHHqppZpeEVZpEKQdPcmPUQRfadcX5/5t0=;
        b=l62t2ivlUxilMsIapwCQyovxHKcjFK0D4LIQAKwW2mD7FsZY4aDwDtSxJ7m/K8NmKU
         AJdQyIoT9ZWXji9+bD5ZurYVNpOiHzkB+kyAceWN/C+vqyHBsqWxFBIz0gIcXEU26XYP
         bGq+xR7SNxzStcFc98oMENNMTFUqLRv00f4ca3YRP9hrFQ5iiAGTyWbVDmTPcBjDcaLh
         IlfoxCyIw1UDxoTylhClVL/Kg3AcCk5cE9JmnflkYohAdEeI3uKYp9tbvftu+zZg/O4l
         GFOJ7buxjOQ4QXp7E5LpS0pj8Nl26YP6QkXVQFvGPTiT3bw4KmkTs3rpR4wxRJBlc8UZ
         KlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678353388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4oOjO1iZqHHqppZpeEVZpEKQdPcmPUQRfadcX5/5t0=;
        b=iMqDDyUdVledZwqS60TMiuhVtzgj7bt21k3kcenM+M7H1PDMZ+vFEqMTXf9kPyjQxU
         xhSDlKwYY5TbumvYKHzz3OPM7XaUTdxXw7cIaWbINb1XhOSoepQUxflq/TtPRa/MX6AL
         y6X8vzYw6ssD7TJaQIbuKZu2rQAYhiyzA6M9E5ttHBomCK41HkGURk7KFV5UawLqN4gg
         ktaNSh0JKuwAmO3OTDXY6Dkj5z317koEE5IrbR+mvCbAYRs45TTpmty2j2xtztjrCU64
         EoimOUKaBNSZEvBlc9/12H73apnw9GkxIEHAJl14qUv3+lWpHiG5lA88bZTfe+L/k+lb
         E5Wg==
X-Gm-Message-State: AO0yUKUTZWKTWmCK34z/1QAe9Z3qE2Bk/z7dU7BvLZPDlroLsKtIJNfG
        DB1h1/8zQ7luCbgifJPzWzxyRXEoDjSuK6HZ/xxLbw==
X-Google-Smtp-Source: AK7set/xO9yLZW6FEwts8sv8BrRfJLxSKPDPCskVFgtuZJ0c4xCwq7UwoYUvM1OKfG5y166F1nne9p8uWnZAcO2Kp/8=
X-Received: by 2002:a81:4312:0:b0:52e:b718:24d5 with SMTP id
 q18-20020a814312000000b0052eb71824d5mr13578418ywa.9.1678353387956; Thu, 09
 Mar 2023 01:16:27 -0800 (PST)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com> <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
 <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
In-Reply-To: <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 9 Mar 2023 10:16:16 +0100
Message-ID: <CACRpkdaj-0dyqWdSbQbjyUed+khDLi-awgan1BnuDvuY2JBzFQ@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To:     Sean Anderson <sean.anderson@seco.com>,
        Niall Leonard <nl250060@ncr.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 7, 2023 at 4:35=E2=80=AFPM Sean Anderson <sean.anderson@seco.co=
m> wrote:
> On 3/7/23 03:42, Krzysztof Kozlowski wrote:

> > https://lore.kernel.org/all/20230126-gpio-mmio-fix-v2-1-38397aace340@nc=
r.com/
>
> Thanks for linking to that.
>
> I believe this patch should be applied instead of that one because
>
> - It documents all the registers, which were previously only documented
>   in the driver
> - It handles the endianness properties.
> - It consolidates the various descriptions of this binding into one
>   schema.

Niall are you sending a v3 of this patch soon?
Include Sean on the reviewer list!

Yours,
Linus Walleij
