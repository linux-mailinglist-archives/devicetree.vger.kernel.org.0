Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAEF16F00F2
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 08:40:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233120AbjD0Gk1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 02:40:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243048AbjD0Gk0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 02:40:26 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 400A4420A
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 23:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682577576;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=EPgT1XWD9d2y5CAUKsljbODvEs9Jrlwdja8eU+CRgw4=;
        b=ZXxJwmyp/h8UWOf2o22KaSVpp1FfSb8YAXOQaiuovaq8QQ3QltFtcMovG+FSDI/vCGXeKn
        lYzMtpPoCEUF0GdehuzfW3KgQD3Y+dHm6q1Vjjf4Ter2T/ExptStixsh7dxdElK8Ak3A+3
        U3MYTK7mepMKmSJG6cOto7mqG8DRv+0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-fqN9dboVNleux2TxWezpCQ-1; Thu, 27 Apr 2023 02:39:32 -0400
X-MC-Unique: fqN9dboVNleux2TxWezpCQ-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-3f175ad3429so13608095e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 23:39:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682577571; x=1685169571;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EPgT1XWD9d2y5CAUKsljbODvEs9Jrlwdja8eU+CRgw4=;
        b=BdtAC32bVuuERz7b/3Fop25dgdBY830oFu6080eRWhGgWCVay0Kj8be1QtE9EGJhVF
         Bhu3P8fGpFLJs5E3eQN2UP9K+PXMXiBnoyLnyjjro5t7XvKtNsceCgAP2SBVg7oVg65h
         YNYcS4jP4EAnCHB6dnrjTlaaJMSrj8U5MIUfSdyaNXuMf4iZOdfXM0HLCLskqoxYsdnN
         s6v6ZA8Lt5plpHX1TTSLx6/uAJAZz7KAUw82XycdD0ro0NttkfQraTHQ5ItmlzCPNHt1
         zdRDIy466iwaEVWy1cLM5G5c87HGiPaL0c0vUEV4Ytdkl8jF10G/agJ0I/5mUfyo+25L
         i5FQ==
X-Gm-Message-State: AC+VfDxjdOLF7NwKul1yHUp2JnyKcu9u3+sjM75zElmlDe6wR4WybTTT
        zw0lGmO8EAwYBxUnMgmklmiQEAR6RmNfqg2a7udqaK5pOImm3BysUIr5k/q0o//o9I+psXNCpQk
        7rXvTN/X1M9yHYgeqao07WA==
X-Received: by 2002:a05:600c:3542:b0:3f1:727f:1967 with SMTP id i2-20020a05600c354200b003f1727f1967mr562862wmq.4.1682577571770;
        Wed, 26 Apr 2023 23:39:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5nfw/gigju/G5+W4XvHrkkofOyr4OClCYOMyOx1Xwo8l5UX2w+C9oIum9isKIt2hEzyr23Ug==
X-Received: by 2002:a05:600c:3542:b0:3f1:727f:1967 with SMTP id i2-20020a05600c354200b003f1727f1967mr562846wmq.4.1682577571460;
        Wed, 26 Apr 2023 23:39:31 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-243-21.dyn.eolo.it. [146.241.243.21])
        by smtp.gmail.com with ESMTPSA id bi26-20020a05600c3d9a00b003eddc6aa5fasm19760644wmb.39.2023.04.26.23.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 23:39:30 -0700 (PDT)
Message-ID: <9f678eac46332679ea3457ba71e82cf6e96b991d.camel@redhat.com>
Subject: Re: [PATCH v2 net-next 0/6] Brcm ASP 2.0 Ethernet controller
From:   Paolo Abeni <pabeni@redhat.com>
To:     Justin Chen <justinpopo6@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     justin.chen@broadcom.com, f.fainelli@gmail.com,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com,
        linux@armlinux.org.uk, richardcochran@gmail.com,
        sumit.semwal@linaro.org, christian.koenig@amd.com
Date:   Thu, 27 Apr 2023 08:39:23 +0200
In-Reply-To: <1682535272-32249-1-git-send-email-justinpopo6@gmail.com>
References: <1682535272-32249-1-git-send-email-justinpopo6@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2023-04-26 at 11:54 -0700, Justin Chen wrote:
> v2
> 	- Updates to yaml dt documentation
> 	- Replace a couple functions with helper functions
> 	- Minor formatting fixes
> 	- Fix a few WoL issues
>=20
> Add support for the Broadcom ASP 2.0 Ethernet controller which is first
> introduced with 72165.
>=20
> Add support for 74165 10/100 integrated Ethernet PHY which also uses
> the ASP 2.0 Ethernet controller.

Note that the changelog should be located after the cover letter
itself. Changelog in the individual patches should be more helpful,
too. In that case, it should be located after the tags and a '---'
separator.

## Form letter - net-next-closed

The merge window for v6.3 has begun and therefore net-next is closed
for new drivers, features, code refactoring and optimizations.
We are currently accepting bug fixes only.

Please repost when net-next reopens after May 8th.

RFC patches sent for review only are obviously welcome at any time.
--=20
pw-bot: defer


