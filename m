Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FAFBA3B37
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 18:02:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728308AbfH3QCB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 12:02:01 -0400
Received: from mail-pl1-f182.google.com ([209.85.214.182]:45429 "EHLO
        mail-pl1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728093AbfH3QCB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 12:02:01 -0400
Received: by mail-pl1-f182.google.com with SMTP id y8so3558851plr.12
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 09:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:subject:to:from:user-agent:date;
        bh=Ll00P0HvLyh9ff4mGqhoY7oNmqZV/WIp9ZbBt7WSZuQ=;
        b=DVNT4sGrKS8uBzpUvPlrwNcWOB48ID/E33wWVXKNaf5Rn1vgh5+t2kQyuqrFOdqw8j
         2YmAmtzGl93QBYkr5aUtVLO4FEmveVBcPhwSjMHjKvnQY3WFEPGdEkGAlL/QNiRxAde0
         9vR6xABOTJ0qzHXur+j0+MpQAv4Et4E71ZHUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
         :user-agent:date;
        bh=Ll00P0HvLyh9ff4mGqhoY7oNmqZV/WIp9ZbBt7WSZuQ=;
        b=rMG0xAkEPNKSCwHdx8fuSfGWUQm5kJpAgFk/axMSZ4yXLSPDFTToIDHbSjdaV+aqeJ
         DigWKbrpko5T4XBkwQFK9wTFHPN/t2beX06EhlaNVvOM6AIsOa19UANxu4cB/82Tu7H5
         cFPxRXgPck7cSoDv4RJb31zdOSAOwwhlBVKhUp9A2HeXuP5p9WBd8o+hKw9dm6WEDzLZ
         S9fM17w/zRLJTqLdB05rFULRRpFJHBQAurvBaZJwuhi8qeaih++kVbwGEYSkd0abWsXG
         xqfxm2QCqeo8HlPyPuwwMwsCu7YcmqYxBtLIK3PP+vtqXsatpVbwVqxgScJ2ScwXvY0Q
         qgFQ==
X-Gm-Message-State: APjAAAUcELyBvEe90kA+Pm1dRdIMghcCV3Xs9uo0swWCXzCSUVI3XVIG
        5pRiboxaGO1yhaVy/FjdyyhlVg==
X-Google-Smtp-Source: APXvYqxBQB8qqHi4xILIYQH7twNKrk/p0gZaksrJaQi2G+n2F2uAcIBYTnbtvlcNY1uzFyMjBAQ7Rg==
X-Received: by 2002:a17:902:223:: with SMTP id 32mr16796973plc.220.1567180920622;
        Fri, 30 Aug 2019 09:02:00 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id t70sm5846917pjb.2.2019.08.30.09.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 09:02:00 -0700 (PDT)
Message-ID: <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org> <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org> <20190223165218.GB572@tuxbook-pro> <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
Cc:     robh@kernel.org, andy.gross@linaro.org, shawn.guo@linaro.org,
        gregkh@linuxfoundation.org, mark.rutland@arm.com, kishon@ti.com,
        jackp@codeaurora.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        khasim.mohammed@linaro.org
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY bindings
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Fri, 30 Aug 2019 09:01:59 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Jorge Ramirez (2019-08-29 00:03:48)
> On 2/23/19 17:52, Bjorn Andersson wrote:
> > On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> >> +
> >> +Required child nodes:
> >> +
> >> +- usb connector node as defined in bindings/connector/usb-connector.t=
xt
> >> +  containing the property vbus-supply.
> >> +
> >> +Example:
> >> +
> >> +usb3_phy: usb3-phy@78000 {
> >> +    compatible =3D "qcom,snps-usb-ssphy";
> >> +    reg =3D <0x78000 0x400>;
> >> +    #phy-cells =3D <0>;
> >> +    clocks =3D <&rpmcc RPM_SMD_LN_BB_CLK>,
> >> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
> >> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
> >> +    clock-names =3D "ref", "phy", "pipe";
> >> +    resets =3D <&gcc GCC_USB3_PHY_BCR>,
> >> +             <&gcc GCC_USB3PHY_PHY_BCR>;
> >> +    reset-names =3D "com", "phy";
> >> +    vdd-supply =3D <&vreg_l3_1p05>;
> >> +    vdda1p8-supply =3D <&vreg_l5_1p8>;
> >> +    usb3_c_connector: usb3-c-connector {

Node name should be 'connector', not usb3-c-connector.

> >=20
> > The USB-C connector is attached both to the HS and SS PHYs, so I think
> > you should represent this external to this node and use of_graph to
> > query it.
>=20
> but AFAICS we wont be able to retrieve the vbux-supply from an external
> node (that interface does not exist).
>=20
> rob, do you have a suggestion?

Shouldn't the vbus supply be in the phy? Or is this a situation where
the phy itself doesn't have the vbus supply going to it because the PMIC
gets in the way and handles the vbus for the connector by having the SoC
communicate with the PMIC about when to turn the vbus on and off, etc?

>=20
> >=20
> > So the connector should look similar to example 2 in
> > connector/usb-connector.txt.
> >=20
> > Regards,
> > Bjorn
> >=20
> >> +            compatible =3D "usb-c-connector";
> >> +            label =3D "USB-C";
> >> +            type =3D "micro";
> >> +            vbus-supply =3D <&usb3_vbus_reg>;
> >> +    };
> >> +};
