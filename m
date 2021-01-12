Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163F12F260E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 03:07:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727626AbhALCHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 21:07:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727536AbhALCHq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 21:07:46 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326A8C061795
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:07:06 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id y8so539902plp.8
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=2F+HY7sjzZzCB+BFa7wOXNnDaimHVf2vx0yPNa0ospM=;
        b=YhP/3raauqCbJThTG1tqVh6bbCRZc6aip6iKp8uG8QTecQRYfzdoEqbrdntxvsyHIP
         VJfluurB5EXkZXDYRuVyizqZ0aCpDFJbvpRoZXILh7v01vHozhN21ei4E9Gw/gYd+J0w
         Sevbkhj6HNvm+Rfxz7SjTJYb/hXtSD527ctEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=2F+HY7sjzZzCB+BFa7wOXNnDaimHVf2vx0yPNa0ospM=;
        b=b0ztKPAwLztbl+/qrwFU7XnkZFONwq7RXkRJwt/fSwCh5Q2PV++N5Cf1V57Gdbtjb5
         RfxN7FrJhGHOpqhTAA1ZcuKBIHu8HnAOWG+J065p9ThSn7wMa/X+QlE7i2PUQpxxcuLZ
         mT6B4cgepVnFke3wJjvLWt3CaIwDeCfwW13tWK9QLkA/cZvaDBfewNULPY2vrRUR0Owi
         5EMaE2OHF+ALSV0Rb7jLN/dL7IFQXLr5fEVnGXDMz3/pTSH3ehReJXfFPHENClrEi28p
         G75dffDb1TJsrM+zMg+sYPDBrEc8mbC0gIKel05yTCYlEwY5bkgBi6rI3g+U8fRbKMXU
         Lpzw==
X-Gm-Message-State: AOAM533ppODduwbKQ12ODb6diekDzNEHBN3e0TA20GLXF80iA6+jKQSN
        eXiFZ4EDE+mNUvWbIYESQENssA==
X-Google-Smtp-Source: ABdhPJzBowiFCxic+D20F1166rzy+aDqH7zlk9o0FilvbrfIyAuZQCwVF7oMtNvw+Rg8+HexutIwgg==
X-Received: by 2002:a17:902:bb8c:b029:dc:2e5e:2b2 with SMTP id m12-20020a170902bb8cb02900dc2e5e02b2mr2780021pls.10.1610417225846;
        Mon, 11 Jan 2021 18:07:05 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id gm18sm729332pjb.55.2021.01.11.18.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 18:07:05 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210108172316.v4.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
References: <20210108172316.v4.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid> <20210108172316.v4.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
Subject: Re: [PATCH v4 2/2] ARM: dts: cros-ec-keyboard: Use keymap marcos
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Mon, 11 Jan 2021 18:07:03 -0800
Message-ID: <161041722306.3661239.14711983912284263201@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-08 17:23:32)
> The common cros-ec keymap has been defined as macros. This patch uses
> the macros to simply linux,keymap in cros-ec-keyboard.dtsi file.
>=20
> This patch also creates an alias for keyboard-controller to make it
> easier to override the keymap in board-specific dts later.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
