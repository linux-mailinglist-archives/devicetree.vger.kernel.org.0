Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDB89234A9B
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 20:03:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387429AbgGaSDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 14:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729969AbgGaSDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 14:03:12 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC1FBC06174A
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 11:03:11 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id e22so8220384pjt.3
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 11:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=ZjrJAzYswZqCVSVIaoyYZxr9XduXpUTxG9r/FHGE6cQ=;
        b=JV5DQKXhPEbZKTdY/8xEmnRUaJnFZ7LpRkFNdVg882PxA6eUu7EJ+xs95vbhlWnBAy
         zhZODJsM0wtKe982BnYqX16laW9iIQpvT2uxERVmPiP8PSa7mob3ZaZJs5f5PAsxMQ2u
         /B+DYSkBO5j/d8fsT1tndObpzg3oXpgAa6UVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=ZjrJAzYswZqCVSVIaoyYZxr9XduXpUTxG9r/FHGE6cQ=;
        b=RDkmjIMUoxkobPFo/d+t5TOKCAHy1mqdRpWcWOWc0IlxjKx4ldi+50U2bX2WZhZ/Ic
         TQrklPaDQr6CXpXSclFqzuIfDSv/QBAPP+4x5Dm1LiNSojuze9fnZHPPSTgG/JkDHYGy
         ITeCNeugrI6JF9Ape74pHBELNf9WICzMjWEy2hpZslnhDDGZjexNBD++R1bOIeTt3bs3
         3VrFs3IQseSrKXYNDNliY+hS0C7DvssDdfAp5fCex6pnYJysFd7DWgDBHjdBMaoQJ8q4
         dtDGnRe/xSWHDDu8D4i1V0TT8LnH5EItgMsaP1isbheFCZ2XfhnAvcvjhYOfZxQRHRti
         eRkA==
X-Gm-Message-State: AOAM5301Fjoz+UwO1F37hK/BIiLQneQmqMfqB8e2LSdD9JybJ+VA7b6I
        KEOwKXz1ZB2JwvdyF4PTXqpojA==
X-Google-Smtp-Source: ABdhPJymp5GnPhZUtJTMWMSmAeJ7UyHP5HdsLB4so0CKriPHdFZEzBcgwvs9bW2i0cZF8tcS94m/hQ==
X-Received: by 2002:a17:90a:8a87:: with SMTP id x7mr4536026pjn.81.1596218591350;
        Fri, 31 Jul 2020 11:03:11 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id e65sm10140754pfe.91.2020.07.31.11.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 11:03:10 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200731104555.v3.3.Idbfcd2e92d2fd89b6ed2e83211bd3e6c06852c33@changeid>
References: <20200731164853.3020946-1-campello@chromium.org> <20200731104555.v3.3.Idbfcd2e92d2fd89b6ed2e83211bd3e6c06852c33@changeid>
Subject: Re: [PATCH v3 03/15] iio: sx9310: Fix irq handling
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio@vger.kernel.org
To:     Daniel Campello <campello@chromium.org>,
        LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Date:   Fri, 31 Jul 2020 11:03:09 -0700
Message-ID: <159621858968.1360974.3370824821343276249@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Daniel Campello (2020-07-31 09:48:40)
> Fixes enable/disable irq handling at various points. The driver needs to
> only enable/disable irqs if there is an actual irq handler installed.
>=20
> Signed-off-by: Daniel Campello <campello@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
