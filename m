Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A0D6AC1D8
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:51:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbjCFNvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:51:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbjCFNvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:51:14 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B8E24138
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:50:52 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id v101so8151125ybi.2
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678110651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qtBLJgimyjUZrCTww2/nWMue86SQPNFkXsRzufY3H1M=;
        b=nc9A9BUpW53D5PqzzSiCD8QKIAcg5XrB2jR86Oy0dZxkV4hhjo5VfvM2uduB61dLDj
         g1SWXSUkXv8D8/jIa0Tafirdeu18wsaUUswPJgyWhU6GsO93pQgfnAnD/rB+IwPzhgeC
         JwkneIEmHW06XTirUjlEhyQrl+SL1XhlkX8/Yhad7MsPn2T9W2bbozKPGCRugTkPUjR3
         84KyRdnWPXCnLw2rTL6UAIKarmZ01/1pruEe3yXmsVmrbUAP468DhAVef1Ie/9PblIiz
         4EepnkIsybOmCNCc8g8kg1hRc6/2uKnlTnZ+aMC0pBc5JnR7kN1LVV1dBWB9jM1FqU58
         txLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qtBLJgimyjUZrCTww2/nWMue86SQPNFkXsRzufY3H1M=;
        b=mRATu9NIpYKmUe3X7LZ+XjXzUxr0veSkD629lXjFaptmLaDrbBszMdbdktfHPVHgcD
         3z1nuHJSWNXRneqjIqtEjtQuTVWJptjtRqiZDZQn+PHTrbhtDGhlA190Te283inrfMo5
         BOc/EEnv6F1/TIQbB9mg2tO9t2QIu5VD7SGP+JuKFbnAWmuqMkEZKFFakjmpW7dcThzZ
         6n0gwaB+EhI9zgnDNbrzeL5+xmz/1Mx4U2g3jxHg8CuX3Fz6djBOAKLI3iLIHMCNZF9C
         wG63kmfQ96OPlGGuH0gDPXUQICTgMT8kPNQS8BgnHV5FLRplAqmVasRdxjEpKW/QxYSM
         J3SQ==
X-Gm-Message-State: AO0yUKVZ8JPgomQJ3kzC2XjEp9AwuIqnS9NcsVhzbAqeKeBtelvXcbih
        XIMO6qkF5C7oXQG8xBureY5STFcvRSD6FD5ZijNHwg==
X-Google-Smtp-Source: AK7set8JTNHF8MypTSPIeonQB8cYtk4+/oxJ7RhvaeapmVYTL7Epb5DAM67FQFkpGywXUdj7a90T61UM6PiJJ3f86BU=
X-Received: by 2002:a5b:384:0:b0:a65:8cd3:fc4 with SMTP id k4-20020a5b0384000000b00a658cd30fc4mr6353160ybp.5.1678110651682;
 Mon, 06 Mar 2023 05:50:51 -0800 (PST)
MIME-Version: 1.0
References: <20230303002850.51858-1-arinc.unal@arinc9.com>
In-Reply-To: <20230303002850.51858-1-arinc.unal@arinc9.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 14:50:40 +0100
Message-ID: <CACRpkdayVLTT0x6hfnwvL-Atafkj8PRw5uwe7Wic3jtn+X-axA@mail.gmail.com>
Subject: Re: [PATCH 00/20] pinctrl: ralink: fix ABI, improve driver, move to
 mediatek, improve dt-bindings
To:     arinc9.unal@gmail.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        William Dean <williamsukatube@gmail.com>,
        Daniel Golle <daniel@makrotopia.org>,
        Daniel Santos <daniel.santos@pobox.com>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>, erkin.bozoglu@xeront.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 3, 2023 at 1:29 AM <arinc9.unal@gmail.com> wrote:

> [PATCH 00/20] pinctrl: ralink: fix ABI, improve driver, move to mediatek, improve dt-bindings
>
> This is an ambitious effort I've been wanting to do for months.

Good with ambitions :)

As long as Sergio is on board and can test the changes and as long
as the DT maintainers do not explicitly disapprove, I'm game to merge
this.

I guess you will respin on top of v6.3-rc1 when the first round of
non-RFC feedback is collected.

Yours,
Linus Walleij
