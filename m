Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 271FD48CA86
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 19:00:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355889AbiALSAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 13:00:07 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:50707 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1355862AbiALSAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 13:00:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1642010405;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=pEptlI5akvEi6pWcIuSbohMlWFpnQbMFTJDYOQOJcWA=;
        b=S6UKQn3tlpyESYGgH+NQF4Went9H6+/kTyUXI7ZE88BiiWXizJ8wH4LqTq+Aj5HdHkrodw
        JOd0kha3Emf9AdvWMehLkyWLGIxKSmUH4fZkwsX+X0TK+Uet8X9zNtAjnzzYg0WfhPXein
        fKs1AewTAICzq04QZcuI+6qhYaMbywM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-0EkxgHbaPxaUK-yhubgQUQ-1; Wed, 12 Jan 2022 13:00:00 -0500
X-MC-Unique: 0EkxgHbaPxaUK-yhubgQUQ-1
Received: by mail-qt1-f199.google.com with SMTP id o5-20020ac84285000000b002c7aa152905so1875963qtl.18
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:00:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pEptlI5akvEi6pWcIuSbohMlWFpnQbMFTJDYOQOJcWA=;
        b=lezvYBNk6R6LJq7zjcMjOrbh0FRkUx0J6N7WKUcxkwFXPzBX7ryqVBYV2nvx+sCtfk
         GpyzcgeuZm72AWzDMQDmuv0fLIvZrIlTVgZEjwaWxLmWV1E/HcrHoEJFjip2KxIRPA8k
         VHmOYN2DZ0aYpaILP610bJmRhiyjufPjZqFbUtnSl2KJrb189IOEu2Cp//3b9IJHtzmD
         GKUfVGhxH90SGxF0VNz2bVTneuW2XYQYJNWRIXCh+HQ4WAUdp5zdaG//eZhI9zEgR1Wi
         Suk8pUSEkK4jd3xaJ2Ld4a0hz8MND1wSB3T7j9R2nK1/OG1aADzvhhkfxEXdwKrknngt
         xgiw==
X-Gm-Message-State: AOAM531cJzIKc7QAZFistZhQEGrpIzmQV+W7GWMOopkNHFPqh/TcXUsV
        j5ldR2oHOllFgXhPUCrwxb6O51CK+qDuNuyJ6qkpzHVyP6S6sOTTRI7DZC26ChY8C09T2WBW/Hn
        ERO8bvp1nHdPqDxDGortPpg==
X-Received: by 2002:a05:622a:3cf:: with SMTP id k15mr597349qtx.272.1642010400301;
        Wed, 12 Jan 2022 10:00:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwQBGTdrQXxArGr5p3XeAsoeIo3BayYJiCf8dTC8GaOhfVWk7kvK/kuco9fH+RuSWLMc5jOTA==
X-Received: by 2002:a05:622a:3cf:: with SMTP id k15mr597337qtx.272.1642010400083;
        Wed, 12 Jan 2022 10:00:00 -0800 (PST)
Received: from localhost (net-93-146-37-237.cust.vodafonedsl.it. [93.146.37.237])
        by smtp.gmail.com with ESMTPSA id d17sm331123qtb.71.2022.01.12.09.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 09:59:59 -0800 (PST)
Date:   Wed, 12 Jan 2022 18:59:56 +0100
From:   Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Felix Fietkau <nbd@nbd.name>,
        linux-wireless <linux-wireless@vger.kernel.org>,
        Ryder Lee <ryder.lee@mediatek.com>,
        Evelyn Tsai <evelyn.tsai@mediatek.com>, owen.peng@mediatek.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 0/6] introduce background radar support for mt7915 driver
Message-ID: <Yd8XHCHaBJGxYq+g@lore-desk>
References: <cover.1641996493.git.lorenzo@kernel.org>
 <Yd7jdaKTrTFDU36g@lore-desk>
 <CAL_JsqLzJCi+7ziZ6H=oBoQhi_onMXk7Hb9ry-Gv17S0_gYvwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rzTC0dn+5h0fM9tq"
Content-Disposition: inline
In-Reply-To: <CAL_JsqLzJCi+7ziZ6H=oBoQhi_onMXk7Hb9ry-Gv17S0_gYvwQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rzTC0dn+5h0fM9tq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Wed, Jan 12, 2022 at 8:19 AM Lorenzo Bianconi
> <lorenzo.bianconi@redhat.com> wrote:
> >
> > > Introduce radar/CAC background detection support for mt7915 driver
> > > Background radar/CAC detection allows to avoid the CAC downtime
> > > switching on a different channel during CAC detection on the selected
> > > radar channel.
> >
> > @Rob: I forgot to add devicetree ML in cc. Do I need to repost?
>=20
> Yes, that's the only way patchwork picks up patches and checks run.
>=20
> Rob
>=20

ack, posted v2.

Regards,
Lorenzo

--rzTC0dn+5h0fM9tq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCYd8XHAAKCRA6cBh0uS2t
rHMnAP9ly482DLSNr2TVK3rdVQyQwe7Mn0Vi30+mg/JdpgywtQD/W55pFE6dT+de
1XsbcaDaHyeh4Ivq1krXcvON29TY5gI=
=VaN/
-----END PGP SIGNATURE-----

--rzTC0dn+5h0fM9tq--

