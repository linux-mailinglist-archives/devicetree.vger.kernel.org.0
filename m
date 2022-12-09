Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48F0964871B
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 17:58:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbiLIQ6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 11:58:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbiLIQ6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 11:58:01 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00CB1DF3
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 08:57:57 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id p8so7943509lfu.11
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 08:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RpqPCBfzDAs8JVS1IeOpD/CKxCRHOoR51Vnm5lxDkNA=;
        b=lsm4bM/FVHMd9HNKHL0b6U4XIPGnbS59knpkI/1xA5FnZQfqN3PUXusvmDIht8LRNa
         P2vbJj4oi73OsOmEOrlLKzDBweEBcFCa0bCOVRpmsl/skFkyXhI5Km9L7UfAf8YQ1d7k
         QaBuOOZvdDjHkIQic82vHrks4VJm0S1NCJwmzhWMiCiCxo57iiq12dLDKVYGldmqPgp2
         Rm2jqVZ4h1lx/eqy4hHdYDQ+1i/JCNYd63U+Iq9vwkT1XtFbltg0Fd96byPPBhmpkfH3
         LKKAKWYkzD3CEX3oXnHwRRCEA/GZhIxws/cQifyAFBoysezf0/Z7kyjGlo+24fi3axOi
         GikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RpqPCBfzDAs8JVS1IeOpD/CKxCRHOoR51Vnm5lxDkNA=;
        b=B1cUzJweyp5sdy864XDQlVRtW1BUSQo7UY9bmsjino9n1J8NSxUSb8KnMUhCm2vydm
         M08aVa025yQ1k+s0JMEDC4rqjzZvPjwfL2j9N8Cucf/clSWClQDkY5+jYdm7A44Yfro0
         KjjTWJsr2+ecafdFo2fwRX4IFEsXjd74wa9vuRVWaJwN0AH9ew7YXL2NCP8Io6jMpCYp
         nB92OIpfOSp3v4L8OH/7pNfjXX1+DBucBWxfJ+YcOLEu/nnkM0G9bpOOGB5wgHYtXuQw
         jb3kzeGFXvGZDMoiUw6R06dRXYbV1JKp9PVsBQWA6xcUtLDi7FpjvQNgoIJT6XJFtXag
         PDDQ==
X-Gm-Message-State: ANoB5pkPXZ58HWWZSLIo+8a//ieHyYmnlZigNn8ZzlT7NedCIWEo9bX1
        GW81AP7A/r1VIl07r5/hCgkGK7BI+NukhHzXcBY=
X-Google-Smtp-Source: AA0mqf7kzu6iAfWEPXh8v/aZNVbaQTPA+0OCONbOH+E5SHR2eUqLP85TXJEV/QkpOHRfXXEDIX1s/g==
X-Received: by 2002:a19:7405:0:b0:4b5:7096:23ff with SMTP id v5-20020a197405000000b004b5709623ffmr1813356lfe.66.1670605076396;
        Fri, 09 Dec 2022 08:57:56 -0800 (PST)
Received: from krzk-bin (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y1-20020a196401000000b004b5850e6b63sm332534lfb.65.2022.12.09.08.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:57:55 -0800 (PST)
Date:   Fri, 9 Dec 2022 17:57:53 +0100
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Naresh Solanki <naresh.solanki@9elements.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Marcello Sylvester Bauer <sylv@sylv.io>
Subject: Re: [RESEND PATCH v11 2/2] mfd: max597x: Add support for MAX5970 and
 MAX5978
Message-ID: <20221209165753.q4ovlu2lebxfibed@krzk-bin>
References: <20221124110210.3905092-1-Naresh.Solanki@9elements.com>
 <20221124110210.3905092-3-Naresh.Solanki@9elements.com>
 <CABqG17hCoY86w3usA6RNLQbGjHo_JRFioznuvdCZLo4_KNaMWg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CABqG17hCoY86w3usA6RNLQbGjHo_JRFioznuvdCZLo4_KNaMWg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 06, 2022 at 11:00:52PM +0530, Naresh Solanki wrote:
> ping

You missed several mailing lists and maintainers, so whom do you ping?
Yourself? Please start using get_maintainers.pl...

>=20
> Regards,
> Naresh Solanki
>=20
>=20
>=20
> 9elements GmbH, Kortumstra=C3=9Fe 19-21, 44787 Bochum, Germany
> Email:  naresh.solanki@9elements.com
> Mobile:  +91 9538631477
>=20
> Sitz der Gesellschaft: Bochum
> Handelsregister: Amtsgericht Bochum, HRB 17519
> Gesch=C3=A4ftsf=C3=BChrung: Sebastian Deutsch, Eray Basar
>=20
> Datenschutzhinweise nach Art. 13 DSGVO
>=20
