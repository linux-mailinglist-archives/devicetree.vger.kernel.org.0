Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48F683C1FEF
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 09:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbhGIHW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 03:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230221AbhGIHW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 03:22:59 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C1D5C0613E5
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 00:20:16 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id g24so5062658vsa.10
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 00:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=V2SOW7kDty897S4ueILqkh1N1C2NDC3+khk8yDqU2/M=;
        b=HI6k8CGrF0n7W4bJwtxoMGKy2vHfcbOGpNWkPutBLh8FwyvVmPzar97PQNn6+6kzR1
         aog7NYymPjPqutk8t+3EGXFS9pmnYSszZNaWjhiYIf+MjmdGsbxfpBn0nviyrVVVtOKJ
         USxKOWu9emiNIlpfai7+4ZgX5Gio7yiqlJlqy2O2hpiZbCo3ct92dNZGShyyXhdzHjNW
         cBJYv4qiFlkIXB146bTs7rau84YUHFvk1A5f/bpGPvMmbo2cU6W4uBqQKFzzwxpb1piC
         HMO1qF469gORmHR+6h51D8zt47W41h0BF3BlYZMGzyD/o2ZwD55U9VbxcBXXsmIXf1Nq
         dmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=V2SOW7kDty897S4ueILqkh1N1C2NDC3+khk8yDqU2/M=;
        b=gJrOZiU+HMnvyrmNJuVwp/aMK7nnrs0U0C+rQkfxDHqHN6pktuv3Q4rFH1quZ4mm3d
         l2qD8547WhhQblUTovgbA3+vMHihdnKVlve0Sdz0U8TV7+K0NJDKRzPT0141HP9ed+vi
         inFu9DB23EaYkF8OkrDyyyyy50EDz/YXlhHIggU44F9Rjn16YV66T4gla6h4LAvNEYix
         dq9sIkO3sNBKAf3sjttVi95NGX2EV9T6N2Oag8IWiq/NKEFdeqx44CANeU2RIRGFoaiz
         6MYrHzLEmBtuvAhaqLOzWDt05z3dv4hIRmtQ/f3Knrglauv102lNPfvWzDhVdnlnha19
         xEoA==
X-Gm-Message-State: AOAM5313T39c5+vyjvJCgG/dQao0Y7ML7a5Yb2vOBdoujiV1GigZK6/X
        iM1pnzEndjkD8kQ8VJBPBUrZENWzbksdJDEDBwiFfeLlBA==
X-Google-Smtp-Source: ABdhPJxONRr/UqxKbNV7hBzE75nHOgr/MIIVofMcuSGxMrnz3I7zLrx+xjStyF8jKSRxsu0Omvrg2SMYylSHDXxkKE4=
X-Received: by 2002:a67:ba17:: with SMTP id l23mr33542899vsn.24.1625815215440;
 Fri, 09 Jul 2021 00:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210707071616.28976-1-matt@traverse.com.au> <20210707071616.28976-3-matt@traverse.com.au>
 <CABMQnVL379GkR_s5c91a0LAPMemup_Lq8U+qU9M1-kBWfVqmTw@mail.gmail.com> <YOYiDlQM/xfgb0CH@piout.net>
In-Reply-To: <YOYiDlQM/xfgb0CH@piout.net>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Fri, 9 Jul 2021 16:19:49 +0900
Message-ID: <CABMQnV+zxURp2K3aXjH3cobndoAXjTdb4xB4w+mMJmjnwyPyLg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: rtc: add Epson RX-8025 and RX-8035
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Mathew McBride <matt@traverse.com.au>, linux-rtc@vger.kernel.org,
        Alessandro Zummo <a.zummo@towertech.it>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

2021=E5=B9=B47=E6=9C=888=E6=97=A5(=E6=9C=A8) 6:52 Alexandre Belloni <alexan=
dre.belloni@bootlin.com>:
>
> On 08/07/2021 06:46:31+0900, Nobuhiro Iwamatsu wrote:
> > Hi,
> >
> > 2021=E5=B9=B47=E6=9C=887=E6=97=A5(=E6=B0=B4) 16:17 Mathew McBride <matt=
@traverse.com.au>:
> > >
> > > These are supported by the rtc-rx8025 module. RX-8025
> > > also has support in ds1307 due to compatible time registers.
> > >
> > > Signed-off-by: Mathew McBride <matt@traverse.com.au>
> > > ---
> > >  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml b=
/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> > > index 7548d8714871..13925bb78ec7 100644
> > > --- a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> > > +++ b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> > > @@ -32,6 +32,9 @@ properties:
> > >        - dallas,ds3232
> > >        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> > >        - epson,rx8010
> > > +      # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> > > +      - epson,rx8025
> > > +      - epson,rx8035
> >
> > 'epson,rx8035' is unnsecessary.
> > This lists compatible string, so we don't list compatible that doesn't =
exist.
> >
>
> Well, the previous patch adds it.
>

I couldn't find anything to add "epson,rx8035" as device tree compatible in
previous patch(rtc: rx8025: implement RX-8035 support)....
I think that i2c_device_id was added and it is not device tree compatible.
Can you tell me if my understanding is wrong?

Best regards,
  Nobuhiro
--
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org}
   GPG ID: 40AD1FA6
