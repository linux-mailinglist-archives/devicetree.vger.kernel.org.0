Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED50C8F142
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 18:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726099AbfHOQwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 12:52:47 -0400
Received: from mail-ed1-f99.google.com ([209.85.208.99]:37439 "EHLO
        mail-ed1-f99.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726001AbfHOQwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 12:52:47 -0400
Received: by mail-ed1-f99.google.com with SMTP id f22so2663590edt.4
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 09:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bBE6aaXfbdthMjW7RrUsuVXnTyAwPNUrUks/THOR0hY=;
        b=BJKbujLKvGPXetDemTv+pXNUxTwDoB1z7xmK3q7TQ8coWJ/zxIxz+Vk4pkEsOHbeZn
         v2zvbdl+XSAMJ+4nmFgCNY+8WUXc2djSXJWPqwK+nB7wUtBooF1qjxXfOENy5BS7501N
         WZVdk7cD/fkin3mVdvOC/67pupsPCUeroZw5tAIFlTw+twpM5kir75Igfo+GOUDknv65
         6IU0nDQlq33y2I/oE8BfuBrxFW7UdNRqfkDvsIpXkEyu3V9vZv6kg2WUNY8mhwmh28eE
         YDmIArJL64U0pV9PXe2CQyvTg/OcRG05uI5CSK639HTuC0+gqGl1IrXkwIevUJmRpR28
         Q5hw==
X-Gm-Message-State: APjAAAVVASYMVheMwlOZ2noHKJgAlNB4gUuFBNICj5m2njV3KfWYmW0T
        pc69MKwDSBKEz5bRnb6S/Ffi/6QSuZK6fwyE/90yM0zW4ZltLxiD3GafI7YEaGaL5A==
X-Google-Smtp-Source: APXvYqzy7m9fqIQzgnbqEAxq3CNhPE1jwxvUpnhU6Nj6SwebXXMkv/eKf0PkEDtd+tkRDORcIHtXs7I/K8K4
X-Received: by 2002:aa7:c64c:: with SMTP id z12mr6501653edr.146.1565887965322;
        Thu, 15 Aug 2019 09:52:45 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by smtp-relay.gmail.com with ESMTPS id v11sm61880eds.33.2019.08.15.09.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 09:52:45 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1hyIzU-0004u3-TT; Thu, 15 Aug 2019 16:52:44 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 3CA2F2742B9E; Thu, 15 Aug 2019 17:52:44 +0100 (BST)
Date:   Thu, 15 Aug 2019 17:52:44 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Raag Jadav <raagjadav@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v2 1/2] regulator: act8865: operating mode and suspend
 state support
Message-ID: <20190815165244.GA54921@sirena.co.uk>
References: <1565721176-8955-1-git-send-email-raagjadav@gmail.com>
 <1565721176-8955-2-git-send-email-raagjadav@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <1565721176-8955-2-git-send-email-raagjadav@gmail.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2019 at 12:02:55AM +0530, Raag Jadav wrote:
> Implement ->set_mode(), ->get_mode() and ->set_suspend_xx() hooks
> for act8865 with unlocked expert registers.

This breaks the build because it depends on patch 2:

drivers/regulator/act8865-regulator.c:22:10: fatal error: dt-bindings/regulator/active-semi,8865-regulator.h: No such file or directory
 #include <dt-bindings/regulator/active-semi,8865-regulator.h>
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1VjdsACgkQJNaLcl1U
h9DGoQf/U7SNQL5EaBGBy7/X3RqNXsOh5/zVXWrjoxsQb7s9IYT7DrN5ESS491h0
muZWo1k9R3SrDXao8/mxE9V+k7Jv9tF4Rw/5SCHT9lYE71aUMrFlWQ2Rn5yqRaXu
/eEyoKkjkqRFo75iK5TR5zBw1ae7mC3leSeUxbTGspKxFrsJKcVNausaIF60/M9Z
VPKfVbisLdSZD8GuXW3WAY/vpI7EuXuMBqHsiJXqv9LD1GrTbpVRaaAQr7BKHoMe
OJqLTYg+Dne7YF7jCnh29v6plsyOnRgkTWHPSTL9r55WcGL1gSD+WwspvJU+XFTU
1QXbYjANxj2DF2TXIQv26F/WgeBIrA==
=MsMV
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--
