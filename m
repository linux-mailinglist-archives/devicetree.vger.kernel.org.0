Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06B705F74D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 13:45:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727547AbfGDLpu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 07:45:50 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:33124 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727436AbfGDLpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 07:45:49 -0400
Received: by mail-lj1-f194.google.com with SMTP id h10so5899542ljg.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 04:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=EcGyPuegWpkyLveOwqViCG+5n+jaNm8XsLEeG0/iRsA=;
        b=jRqEA9jpdiAIsbLYJeNpbrSUkTbSqZrrluMKjb9VCqgfn2JcBOi6jk8Lk3VntTNsBD
         BgHH6LXMaL4kyRzhjTLmRe3b0gsJyTYzoK2B+Eur6PXvz9Aggp5XneLBHifpoDN5OJgH
         X9YctfaM0YwCqQ1gjCmcLdGRr32QGoR4Lu/UUL5eMLiuQ90ucdjoLvN+5JqMUT5XDUuP
         8qOcxjCKSHc40xwDTQUKVL1wUxMZkQfJ4PU6lZtgBonl83Emx/EX9BPwm6YGwnLiEpOh
         7Aq7oC7XSZkyyHPDK6cpFQ+9Rxe8zUgNBnj8yTdCyK6h/K98NQHaT+U/sFb+uJX3gezp
         JPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=EcGyPuegWpkyLveOwqViCG+5n+jaNm8XsLEeG0/iRsA=;
        b=UUMt4xA/IoHhsV3h6mO1rw3RWOQExa4XKBMJDtu1ih9zVMvfoFsgjGT0d50OaoVjOi
         inq5wpLIGRqskGC6Dr+Fy0R/qFyJTIGdeCjmo8iNxynTj2R3VxJ75p5YnqQFfZCmdlOV
         tzVzEYj72+Vs+/G15YeMi8MZG2fE8YUegvpKNOR/JfO1odqqkH0PuSgGOKf/EnBWZ3ax
         xHmbcyaVOikzBHzzfTfhYtf+WfUxwANApL7Po9eEVyujp9l0EjKsx/EpasHQpE2KB+Q0
         QM62mbcFcFcLdQ1TtsbF6UNOIvMoFvbLrH6wZARdtMhSt1ErG1KWFQ80kpNOMvvs9gdl
         4BMQ==
X-Gm-Message-State: APjAAAUtJECHOhG5HxiyG3OcrprsnmHEMY7WcmO9+mD9Rpsku2D8EwGH
        KoinV0Fm6CYiVRV9I7VRVGV7H44sWf2XXz3XnKA=
X-Google-Smtp-Source: APXvYqxECjz+P/SVIEx+OjvWTRlZkQMIrPms1adAd7ZXiedN8D0FPNO2bMbtUF3epg7DzVZNjb5gcaEF3aKBt0VIH3s=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr4663565lje.214.1562240747757;
 Thu, 04 Jul 2019 04:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 4 Jul 2019 08:45:37 -0300
Message-ID: <CAOMZO5Buo4psm_JOH-3OTQQ0t+QGGRSabBWKFksP9W10Tr-hOA@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name
 of I2C buses
To:     =?UTF-8?Q?S=C3=A9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 4, 2019 at 8:01 AM S=C3=A9bastien Szymanski
<sebastien.szymanski@armadeus.com> wrote:
>
> A few boards set clock frequency of their I2C buses with
> "clock_frequency" property. The right property is "clock-frequency".
>
> Signed-off-by: S=C3=A9bastien Szymanski <sebastien.szymanski@armadeus.com=
>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
