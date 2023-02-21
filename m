Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B28069DC7B
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 10:01:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233854AbjBUJB5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 04:01:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233839AbjBUJBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 04:01:55 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F150E23863
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 01:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1676970066;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=alEius1H4Y8w76WB7xmYU0Ggwjx3hA9AGAhRmkeiUTc=;
        b=Lvurwr4AA2r3yhQTBDJyF/tPEk223Sg6c0BxK3/ROiD9jhQSVgWghhVv0Ci+MomcSNqXdS
        tOBQUZqbppoNLQYmqTWKQVfNiI3OVS2W942a+RLqO/AClmVPpCpCxpI4RndimvGfNMJbnT
        b25bi09lBS1vu/Ogx86pUxrgfYc8joA=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-79-LIeOU52JP-CTTJiYT3z0JA-1; Tue, 21 Feb 2023 04:01:03 -0500
X-MC-Unique: LIeOU52JP-CTTJiYT3z0JA-1
Received: by mail-qv1-f72.google.com with SMTP id m1-20020a05621402a100b004bb706b3a27so1533314qvv.20
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 01:01:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676970062;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=alEius1H4Y8w76WB7xmYU0Ggwjx3hA9AGAhRmkeiUTc=;
        b=abWrOwoAGbwMmkIKcHLO9nvXJ1TxHjp5MnfoTH+/PpX6kL0n9NFhX38Z+fnZdEqlpS
         PSY8wxHMh1xkfeT4c1ceEMgcMgGvBAjOhb6HEAI/Y9RZnrs4Kulf81Ft8LB8tTTQLjHr
         UYr1yNj4RoOVpSx9lDlNGs9WBKibnrC9b8MsgbsFy9fzapt+9G2gP7XrN4CfgiGRIm3b
         DiDfvIz9h7HskYcIR47yJA/tyr6sF5TKeElU8snj3CFTIyGRIrVmwdk5502Y5E7rBEQf
         K/IrjAxhrKl+r3+valGlz0ZwLKmDZ1/dK6PqKbWLQC1LZ7jhRx/8H5UB/aVaWZ/vDMEl
         rDKA==
X-Gm-Message-State: AO0yUKWxAp7PVTEG8wXKPNNFSYr+1wq5KatMyGNBFcElsBB3JWj+rASC
        atPIYK2uNydFiErLX80ljC5jCBEppl47avlla9bxLtSNcLIxauyw+Fcwd7NFKxRuS2Emip7jRTr
        ygiF5p9RokzY4nfSkyFF1sA==
X-Received: by 2002:a0c:f2ce:0:b0:56e:b6f0:e102 with SMTP id c14-20020a0cf2ce000000b0056eb6f0e102mr5321074qvm.0.1676970062644;
        Tue, 21 Feb 2023 01:01:02 -0800 (PST)
X-Google-Smtp-Source: AK7set9bNxSgvAs/GHzQpOohJLTvtYH+L3tWy9vURFBZyZVmzfwSmBF/kXeV3JS4/e2m+VqWWWGB3w==
X-Received: by 2002:a0c:f2ce:0:b0:56e:b6f0:e102 with SMTP id c14-20020a0cf2ce000000b0056eb6f0e102mr5321046qvm.0.1676970062276;
        Tue, 21 Feb 2023 01:01:02 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-121-8.dyn.eolo.it. [146.241.121.8])
        by smtp.gmail.com with ESMTPSA id z131-20020a376589000000b007186c9e167esm2077680qkb.52.2023.02.21.01.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 01:01:01 -0800 (PST)
Message-ID: <e9269e140d0027534e91368475155d83ccbe66fb.camel@redhat.com>
Subject: Re: [PATCH] dt-bindings: net: dsa: mediatek,mt7530: change some
 descriptions to literal
From:   Paolo Abeni <pabeni@redhat.com>
To:     arinc9.unal@gmail.com, Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, erkin.bozoglu@xeront.com
Date:   Tue, 21 Feb 2023 10:00:56 +0100
In-Reply-To: <20230218072348.13089-1-arinc.unal@arinc9.com>
References: <20230218072348.13089-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 2023-02-18 at 10:23 +0300, arinc9.unal@gmail.com wrote:
> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>=20
> The line endings must be preserved on gpio-controller, io-supply, and
> reset-gpios properties to look proper when the YAML file is parsed.
>=20
> Currently it's interpreted as a single line when parsed. Change the style
> of the description of these properties to literal style to preserve the
> line endings.
>=20
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

# Form letter - net-next is closed

The merge window for v6.3 has begun and therefore net-next is closed
for new drivers, features, code refactoring and optimizations.
We are currently accepting bug fixes only.

Please repost when net-next reopens after Mar 6th.

RFC patches sent for review only are obviously welcome at any time.

