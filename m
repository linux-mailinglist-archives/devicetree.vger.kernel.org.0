Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A41325A153E
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 17:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241514AbiHYPIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 11:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241003AbiHYPIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 11:08:02 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D45096FE0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 08:07:58 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-11cb3c811d9so23580145fac.1
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 08:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=T+Absj8wDJ7ls5xDxkdfAwuouIdYDX1GOTPe01NBZ0g=;
        b=YPMYZE5LIzanTCYfvLgrXImNQuxwJN6yHc4JZLD8+TlBk5I4ZVrqA4U+EJlYWZXKU7
         A+KV/bnVI8ExLt04X6y3OBMBrMk0H0FQ35REFRj6+Fi/DupjhmzP4wRb/Oxh398pO7cF
         GDCDHfWymFxwqxselbAuLoP45JMzK0IvElU8tOKUkRUPWbEAv8Lmpghkbtjge73kvbPf
         Ky9cwCjkW7YnrP54mzmJj14Yi2e092pre7ovFJMfv0z+Ccmp7OuTLInBu8R/5IuFLHyW
         q/6wFmBlkUo40DgaME9Q3LksUuDeq2VzmLTNEkbVv3D627otkZJMXTEbVG63T0F7g//5
         bHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=T+Absj8wDJ7ls5xDxkdfAwuouIdYDX1GOTPe01NBZ0g=;
        b=iezslaJOiimzjSWKbdqNL4UyGENHIi2LtVTtkqbiXIqzZwiUUKJgHvji1g3Jqe0J+T
         UBfuLjzDXXVD+L8a7xQnIsaaxgTYcb6taGZgIpiE45Cj78iH9zzAzjPtcolspoatReXG
         TvOXKtvKA5WqH5Vk/iUH7ei851DgCbwXoKnzrSnpGrp603cJ6u7iQ8yo/1RG0kKXUyhQ
         J83IVpiuvia/pwuJkyzm2iYxXisUDwoZu9DJ/R9jxt2Svzxmf8tlU/vJqx7KQQ46c1PW
         1tp1w0EDyk+swVZ4ztxaCu86KgleepOyqXanJshu4RiwojACMDLYoSqTVFj75q6vwzCP
         Vl/w==
X-Gm-Message-State: ACgBeo2SznPqwDa6aRYg3RTlnQGPXHH8n+Z6n3RVGHK2BW7BgP4aDR45
        ypEJhNJtBmvIcwPCi5mS7fo0WKT2lDsRFg0CSTZJlw==
X-Google-Smtp-Source: AA6agR6yZCXiFCpL69abgNHrru8XFObl2zxSCVXAqYoZsmmClhVrrkmXYSSbjwy2HqXz2fmW8AHWPpeHGQLRf+Q93A8=
X-Received: by 2002:a05:6870:9a22:b0:11d:bb4:490e with SMTP id
 fo34-20020a0568709a2200b0011d0bb4490emr6381060oab.8.1661440076703; Thu, 25
 Aug 2022 08:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220825143737.77732-1-dev@aboehler.at> <20220825150236.GB240395@roeck-us.net>
In-Reply-To: <20220825150236.GB240395@roeck-us.net>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 25 Aug 2022 17:07:45 +0200
Message-ID: <CA+HBbNEEvyn7a-CXzbFHywvHBky-Kwu8O3POrqo=huOJf-n2pQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] Documentation: devicetree: update bindings for tps23861
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     =?UTF-8?Q?Andreas_B=C3=B6hler?= <dev@aboehler.at>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 25, 2022 at 5:02 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Thu, Aug 25, 2022 at 04:37:36PM +0200, Andreas B=C3=B6hler wrote:
> > The tps23861 driver does not initialize the chip and relies on it being
> > in auto-mode by default. On some devices, these controllers default to
> > OFF-Mode and hence cannot be used at all.
> >
> > This brings minimal support for initializing the controller in a user-
> > defined mode.
> >
> > Signed-off-by: Andreas B=C3=B6hler <dev@aboehler.at>
>
> nack for the series, sorry. The suggested properties are not hardware
> monitoring but phy properties. There should be a separate phy driver
> to manage those.
>
> Also, as mentioned, the hwmon 'enable' attribute is abused to control
> port functionality and should be removed.

Hi Guenter,
Are you referring to an ethernet PHY driver or the generic PHY framework?

Regards,
Robert
>
> Guenter



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
