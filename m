Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24A0C76A045
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 20:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbjGaSXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 14:23:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230472AbjGaSXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 14:23:19 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A6319AC
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 11:23:16 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bcc0adab4so760879966b.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 11:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690827794; x=1691432594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rf2SueqzGQo0vJNgUag9FW9PB32GASllyVQGKBWgKls=;
        b=5dLyn4WKWw7B3rxWFFir/LC1tRlLJAoVZpvvQdLTEpU8+nwbw8vVlqMnf/IwuBFgj0
         d2v2k7swJJ4fJ5Q7P7F4Zmz23MLi9vA98/kr0qQpd2VkGi/l1LtMlTY+WL8PsJUbEcsa
         7RoEWNAD/Y0NnmWYIo43QmdHJCaPiBufBaDpv4w7lGUqSGjXaIG43gMJIVVOKAQPpIVC
         Y0GxhlMsozAB2XQC2jFr3IWwA/Ex+Ow/T0Qa0o/ZU8Y6bgXIREJGMQhvZn1oBa3st+nk
         lAxIBmANtX3D0xD9tZ0lLzNmey8ygWVd17YrmfmlmwqBoQHWlniU7OU5U9LDXR6fppF+
         IEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690827794; x=1691432594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rf2SueqzGQo0vJNgUag9FW9PB32GASllyVQGKBWgKls=;
        b=kNZsnsIIzh8T8GEKODbCbuxMn0DspTeKZgyQpCv4S/6ya9IUbMikje2GjuZB9tf0Ih
         AdiPuHl7ZCgp+LFkjyn7ydplwhuE7e26LPHK4i5U1rTh8rB22BAufQp6dB3pVXmJoUuP
         x1NyTg4RkDw3yEgJrpPpUpqYKQbtCZAsvw60qgHzFbTcF1nuVROC1Ue4nEzsYuLtWbwZ
         a7tzbmVTo4sg2DLF5LeZKdQ9yFHU4e6yTQL8YJyW7G589CSqlGgFZXgjP/g3R8GpXwOL
         4X+oOK8OLsuQPdCL8QUMpk6oTwVbAZSQ3tamhlrimG+o1OnImTcnC6UE0tNgokbckogj
         5pMA==
X-Gm-Message-State: ABy/qLagWQsua91BCYi0sgMU4Wp/8bBtn/gPFvUukNkYp6eCmxUNxEon
        0M6AlkK9Whxt7vLWDAhGlMXaDw==
X-Google-Smtp-Source: APBJJlEqhF6H+EF9UPW9v/50+fttk+UTCFn+fLaauftKmdzDXQ7UgKfy7xULxO8s4MFkZ/WstAheqg==
X-Received: by 2002:a17:906:530b:b0:992:ef60:ab0d with SMTP id h11-20020a170906530b00b00992ef60ab0dmr321850ejo.69.1690827793970;
        Mon, 31 Jul 2023 11:23:13 -0700 (PDT)
Received: from blmsp ([2001:4090:a246:80e3:766f:be78:d79a:8686])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090681c300b00997d76981e0sm6457533ejx.208.2023.07.31.11.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 11:23:13 -0700 (PDT)
Date:   Mon, 31 Jul 2023 20:23:11 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Marc Kleine-Budde <mkl@pengutronix.de>
Cc:     Wolfgang Grandegger <wg@grandegger.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Vivek Yadav <vivek.2311@samsung.com>,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Simon Horman <simon.horman@corigine.com>
Subject: Re: [PATCH v4 0/6] can: tcan4x5x: Introduce tcan4552/4553
Message-ID: <20230731182311.fxq56r35y75j6vde@blmsp>
References: <20230728141923.162477-1-msp@baylibre.com>
 <20230731-issuing-unshackle-20c6cbcbca98-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230731-issuing-unshackle-20c6cbcbca98-mkl@pengutronix.de>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 31, 2023 at 03:47:18PM +0200, Marc Kleine-Budde wrote:
> On 28.07.2023 16:19:17, Markus Schneider-Pargmann wrote:
> > Hi everyone,
> > 
> > This series introduces two new chips tcan-4552 and tcan-4553. The
> > generic driver works in general but needs a few small changes. These are
> > caused by the removal of wake and state pins.
> > 
> > v4 updates the printks to use '%pe'.
> 
> Applied to linux-can-next/testing.

Thank you, Marc!

Best,
Markus
