Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5257577FD
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 11:28:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232242AbjGRJ2J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 05:28:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbjGRJ2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 05:28:06 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20984186
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 02:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689672438;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=z0vyMeOfw7fSC/qxKnZBBj+xlz8lL8pZMksMNnnuzCg=;
        b=K7TqF0DNUlcG9za22J4Zz7DRxNCZQ3nix1UAh2gErwSgekXMLIhPvNGwNCQqqTFyNMdwhy
        etWVYGfmGf6QJaOGaHpOHCzwxkezWulucN8FEtJUtDoprmEn3RA4SZglG0Xt8+fe/Ddwi5
        FG/j3EbMWqoPAJ0KlAKvKiRo6VXdn0A=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-7-QyIh9JVXNGi5WP5aPK7zig-1; Tue, 18 Jul 2023 05:27:16 -0400
X-MC-Unique: QyIh9JVXNGi5WP5aPK7zig-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-63c9463c116so5251366d6.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 02:27:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689672436; x=1690277236;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0vyMeOfw7fSC/qxKnZBBj+xlz8lL8pZMksMNnnuzCg=;
        b=D2YhhyBiCpZZlZx9BDYac27PqbE7682MbBCkxKWqZiJoQDUvczRQnYb6xC6z+D5uH7
         NqtZtRnDPu6TK8L8187j3q6veARoKgU8fp0mj4IsT7WH6J97RokAy3B8ZphvHzu6U/2f
         0xIQIarVDiqzc5JwUnjpgC0/67dHDt/YyzKmJpP4DsMW9xMczaR8Bh6RsgqBbV4Nq67N
         ciyYU2nQ8XKsiuXrrrbuNWWzHxiNT/Q8ThFX4WKnc3Dp1IovnDeo9GOL8k1Xbj2tpidR
         HkB+oQPsAznkHwOUBxHtZnX/7XLSFazgz9RrW0iy59CqMcciGQ1ZId3HniFShm+zHcH6
         8e2g==
X-Gm-Message-State: ABy/qLaWgo2Oh71pLykohXmnSkhTr6P+PjiiscgeayOe1U/eu1l6bJqZ
        bhfGp4vJoKxPXxIqndcUzMB87Pd3ucCgreoQw424pr3b+XluHe62fDWpuo52bCYbrK9vCIRomHV
        fr1FnY1/Z0W/durS6Q05/VA==
X-Received: by 2002:a05:6214:509d:b0:63c:7427:e7e9 with SMTP id kk29-20020a056214509d00b0063c7427e7e9mr12261346qvb.6.1689672436181;
        Tue, 18 Jul 2023 02:27:16 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFYFNw7x3jThmvZICEe6iXFu0qG+zQql7vEpRKMvc0qVPxJUK7o8zW+ji84Z85dUEkIw+qD2g==
X-Received: by 2002:a05:6214:509d:b0:63c:7427:e7e9 with SMTP id kk29-20020a056214509d00b0063c7427e7e9mr12261327qvb.6.1689672435965;
        Tue, 18 Jul 2023 02:27:15 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-226-170.dyn.eolo.it. [146.241.226.170])
        by smtp.gmail.com with ESMTPSA id h10-20020a0cf20a000000b00635fc10afd6sm592785qvk.70.2023.07.18.02.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 02:27:15 -0700 (PDT)
Message-ID: <ee31215ededd386eba19fb62b0de8d0bad78d687.camel@redhat.com>
Subject: Re: [PATCH] net: Explicitly include correct DT includes
From:   Paolo Abeni <pabeni@redhat.com>
To:     Alex Elder <elder@ieee.org>, Rob Herring <robh@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>, Alex Elder <elder@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-can@vger.kernel.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
        linux-renesas-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-amlogic@lists.infradead.org, linux-oxnas@groups.io,
        linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-wpan@vger.kernel.org, ath10k@lists.infradead.org,
        linux-wireless@vger.kernel.org, ath11k@lists.infradead.org,
        wcn36xx@lists.infradead.org
Date:   Tue, 18 Jul 2023 11:27:10 +0200
In-Reply-To: <1c6175fc-496a-843c-c8c5-2173e065eaa8@ieee.org>
References: <20230714174809.4060885-1-robh@kernel.org>
         <1c6175fc-496a-843c-c8c5-2173e065eaa8@ieee.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 2023-07-15 at 10:11 -0500, Alex Elder wrote:
> On 7/14/23 12:48 PM, Rob Herring wrote:
> > The DT of_device.h and of_platform.h date back to the separate
> > of_platform_bus_type before it as merged into the regular platform bus.
> > As part of that merge prepping Arm DT support 13 years ago, they
> > "temporarily" include each other. They also include platform_device.h
> > and of.h. As a result, there's a pretty much random mix of those includ=
e
> > files used throughout the tree. In order to detangle these headers and
> > replace the implicit includes with struct declarations, users need to
> > explicitly include the correct includes.
> >=20
> > Signed-off-by: Rob Herring <robh@kernel.org>
>=20
> (I significantly reduced the addressee list to permit the message
> to be sent.)
>=20
> For "drivers/net/ipa/ipa_main.c":
>=20
> Acked-by: Alex Elder <elder@linaro.org>

The patch does not apply cleanly to net-next. Rob, could you please re-
spin it? While at that, have you considered splitting it in a few
smaller patches (e.g. can, dsa, freescale, ibm, marvel, mediatek,
stmmicro,  sun, ti, xilinx, wireless, remaining)?

Thanks!

Paolo

