Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A494E9729
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 14:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242759AbiC1M63 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 08:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242734AbiC1M63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 08:58:29 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DFF35D185
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:56:41 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 12so15443573oix.12
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nUNeQRWmWl+TZHkgO/Bfhuvrv+aI+JQn8rKQMeqArOI=;
        b=m+B3K7ugZ5OAwYa4pyAM9MlQpst948jVTgcf1Y1DXPlHSs7fsNeWABNxCtZMHaFTom
         M6L+NnEK2r0by4LhkY88o1Lr5iTTKxYOGTYGNcgVeBy2jNQ5drrBoCYIosGgtfuMAyMT
         6Sp4QDPgvgzF5Vvp0f2Jryl9Y/HgmP5ZxTY5g/VbQHo9uNsNojYGAgxFJRaX7KhQQpe6
         5qz38TC8XZ5gDVcO0ub8Pn5Vu+SnA1CnAJDgrUbF+9RECxqacP8icdDzwtS0VK/PQ+GK
         M9YKnj6UyWFAGoogXRQ3w3CllA+3b2e9qSTLmHQz9VH+qvCze3I6hNO9UcTdk6OENW4I
         s2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nUNeQRWmWl+TZHkgO/Bfhuvrv+aI+JQn8rKQMeqArOI=;
        b=bqCX+Qc8/BjTYK/ei2KlKBBMht+GIDvz220AXR+X4aEu/Q9QoiNv5HehpLRx422bSx
         WTq6HgmtmKMqX8wr4Zj3z8PsSmPByUVEOI3UR01KlX/aA4q4sDFFZnhPikv/PtZ5T0DE
         RTByfC+hAS9C8wd5uH15S5Wlm6B3X+1pk6vY0j7x09CisDD4eFl4em8PmuDgkpIjFNG2
         SJV2hKaFNSlvyaZ6p1q2I6NofIH6+MbRB7vemvraGPaPunSV5kjrpBlf2RdjRmlWKFT0
         qM8mGJyznMksM2iSYKknhA747dfr4S/TvIob3hRwqXwUEqzJYThWLE2833c0KgfKemen
         2VsQ==
X-Gm-Message-State: AOAM532p2Ox6HqsIwqiZhnoE6W3uQw6neD59x3wd4AGdj0UiQlch2cDv
        qEI6krtwpBw0p/4IgT0iQrJvgnMj85/ZW0IGhpdwCQ==
X-Google-Smtp-Source: ABdhPJy+/WTUEiWMY2nCszzkHBUZVRno2ywz0YzqRMh1SKkAwlsfmwZu23hYZkAgED3lpMRz+KxKiki8mNI/Co/iqdM=
X-Received: by 2002:a05:6808:1b25:b0:2da:32ff:ab73 with SMTP id
 bx37-20020a0568081b2500b002da32ffab73mr11475623oib.285.1648472201037; Mon, 28
 Mar 2022 05:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220323180022.864567-1-andy.chiu@sifive.com> <20220323180022.864567-4-andy.chiu@sifive.com>
 <Yj4Wl0zmDtnbxgDb@lunn.ch>
In-Reply-To: <Yj4Wl0zmDtnbxgDb@lunn.ch>
From:   Andy Chiu <andy.chiu@sifive.com>
Date:   Mon, 28 Mar 2022 20:54:32 +0800
Message-ID: <CABgGipWYUjti1B-kx5nThKNw_WgyeOVeS9rVcWjXFKneKnyx2w@mail.gmail.com>
Subject: Re: [PATCH v5 net 3/4] dt-bindings: net: add pcs-handle attribute
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     radhey.shyam.pandey@xilinx.com,
        Robert Hancock <robert.hancock@calian.com>,
        michal.simek@xilinx.com, davem@davemloft.net, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the suggestion. I have included this in the v6 patch.

Andy


On Sat, Mar 26, 2022 at 3:23 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > + - pcs-handle:         Phandle to the internal PCS/PMA PHY in SGMII or 1000Base-X
> > +               modes, where "pcs-handle" should be preferably used to point
> > +               to the PCS/PMA PHY, and "phy-handle" should point to an
> > +               external PHY if exists.
>
> Since this is a new property, you don't have any backwards
> compatibility to worry about, don't use 'preferably'. It should point
> to the PCS/PCA PHY and anything else is wrong for this new property.
>
>    Andrew
