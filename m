Return-Path: <devicetree+bounces-931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA077A400B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 06:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29E201C209FA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 04:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56807440E;
	Mon, 18 Sep 2023 04:21:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAF41FD0
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 04:21:31 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F737B5
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:21:28 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-ccc462deca6so3661527276.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 21:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695010887; x=1695615687; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSAM1wAdtshDQfCXiQwF4h/ka9KcanO5IUqHuu9JJ+g=;
        b=ijOj9c6sXyE0ShivHl2XAHQRQFS3UpiMZeEzAfBcuNOBLVJx+GiOzNCa27/ZP7czO5
         ER4QtpI9JS/WM9saTt+TpeCHrD0pS5OiU5jd/7H5pgjEkG0vOCKbvGBkDjEwCTTBid8h
         w/ORzn+8xERXDwnStvawtMkks08IHVyMEEkOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695010887; x=1695615687;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSAM1wAdtshDQfCXiQwF4h/ka9KcanO5IUqHuu9JJ+g=;
        b=Z1RsrKIl7+wwxGsr5K5Yti4ZLAaMli/0LbUpyiH7tQX9Drne/ipeQ2Nu8h1W+X6Nqf
         QTwluZYYNc4LQ6vfiwuRBRvFxl+5NnpTLnp5O7IIiEOKx5yYRsnxuZBQWglor5a6II2C
         96qam6K0JsKlpJiHpkTU/LDYc2ym+Ta9XU50tvwEYNZ4f6uIH3ubyUIp9NWI73yWAJnW
         kL5KSaoU79JlnOPkgU+C73MWx0Y37Y/vy2Cmv07bmXgJ6b0eRjQwFIEOe2sc0VAOTjw9
         t5QLSTM2y3xyZn2xZ+hkxu89TMvXuASEOU4HywROCMHD7PpIUrRFUt0gtjptCEWUcddl
         IvYg==
X-Gm-Message-State: AOJu0YxaS+J2wHiVieE+jmHOq3pSeg+VuzrPsBooNLCjlAOXCvLHePo/
	rF8xZdGuJOmhDTwS/JC6jf/QfrUoGYJbgj1PITuT24l3iQinGLflusQ=
X-Google-Smtp-Source: AGHT+IGamdtg8sH9Us3wVyYRxsSvWDzZYYbwpQFSURHsvVuCzGoCXTMg3//zKJ+piq0Zy4QOFvJKH7Mnw3aBUtLx2dI=
X-Received: by 2002:a05:6871:552:b0:1d1:425b:8029 with SMTP id
 t18-20020a056871055200b001d1425b8029mr10951176oal.13.1695010866866; Sun, 17
 Sep 2023 21:21:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230908101539.2622864-1-yich@google.com> <2ec056f3-e8a8-c5f3-b132-4b9d2beb616e@linaro.org>
In-Reply-To: <2ec056f3-e8a8-c5f3-b132-4b9d2beb616e@linaro.org>
From: Yi Chou <yich@chromium.org>
Date: Mon, 18 Sep 2023 12:20:55 +0800
Message-ID: <CABOkjxJpcOUyyh9vjRuqrhmd=EdQdnyyuBX-++0R+UdENfqw9A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Add Google Widevine initialization parameters
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org, yich@google.com, 
	jens.wiklander@linaro.org, chenyian@google.com, jkardatzke@google.com, 
	jwerner@chromium.org, sjg@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 17, 2023 at 4:40=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/09/2023 12:15, Yi Chou wrote:
> > The necessary fields to initialize the widevine related functions in
> > OP-TEE.
> >
> > Signed-off-by: Yi Chou <yich@google.com>
> > Reviewed-by: Simon Glass <sjg@chromium.org>
> > ---
> >  .../bindings/options/google,widevine.yaml     | 124 ++++++++++++++++++
> >  1 file changed, 124 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/options/google,wi=
devine.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/options/google,widevine.=
yaml b/Documentation/devicetree/bindings/options/google,widevine.yaml
> > new file mode 100644
> > index 0000000000000..bf2b834cb1454
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/options/google,widevine.yaml
>
> There is no such hardware as "options". What is this supposed to be for?
> firmware?

These DT fields would not be consumed by the OS.
https://www.spinics.net/lists/devicetree-spec/msg01195.html
The previous discussion tended to use the "options" node.
Do we have any better place for these widevine related fields?

>
> > @@ -0,0 +1,124 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/options/google,widevine.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Widevine initialization parameters.
>
> This is a title, drop full stop.

Got it, will be fixed in the next patch.

>
> > +
> > +maintainers:
> > +  - Jeffrey Kardatzke <jkardatzke@chromium.org>
> > +  - Yi Chou <yich@chromium.org>
> > +
> > +description:
> > +  The necessary fields to initialize the widevine related functions in
> > +  OP-TEE. This node does not represent a real device, but serves as a
> > +  place for passing data between firmware and OP-TEE.
> > +  The public fields (e.g. tpm-auth-public-key & root-of-trust-cert) ca=
n
> > +  be ignored because it's safe to pass the public information with the
> > +  other methods(e.g. userland OP-TEE plugins).
>
> Then why isn't this a property of optee node?

Are you talking about the /firmware/optee node?
If I understand correctly, that node was talking about how the kernel
communicates with the OP-TEE.
But what we are doing here is passing some secrets from trusted
firmware into OP-TEE, and the data would not go through the linux
kernel.
I'm not sure if it is a good idea to mix two different purpose fields
in the same node...

>
> > +
> > +properties:
> > +  compatible:
> > +    const: google,widevine
>
> From the description I have no clue what is "widevine". The more
> surprising is to see it as "not hardware" but having its node and
> compatible, like it was a hardware node.

We already have a "chosen" node that is "not hardware" in the DT.
Should we just remove the compatible field from this node?

BTW, Widevine is a digital rights management (DRM) system to make sure
the video stream can only be decoded on the valid devices.

>
> > +
> > +  hardware-unique-key:
> > +    $ref: /schemas/types.yaml#/definitions/uint8-array
> > +    description: |
> > +      The hardware-unique key of the Widevine OP-TEE. It will be used
> > +      to derive the secure storage key. The length should be 32 bytes.
> > +      For more information, please reference:
> > +      https://optee.readthedocs.io/en/latest/architecture/porting_guid=
elines.html#hardware-unique-key
>
> Why would you store it in DT? This is world readable... or you mean this
> is some seed?

We will not pass this node to the linux kernel.
This DT node is only intended to be used between the ARM trusted
firmware(BL31) and the OPTEE.

>
> > +
> > +  tpm-auth-public-key:
> > +    $ref: /schemas/types.yaml#/definitions/uint8-array
> > +    description: |
> > +      The TPM auth public key. Used to communicate the TPM from OP-TEE=
.
> > +      The format of data should be TPM2B_PUBLIC.
> > +      For more information, please reference the 12.2.5 section:
> > +      https://trustedcomputinggroup.org/wp-content/uploads/TCG_TPM2_r1=
p59_Part2_Structures_pub.pdf
> > +
> > +  root-of-trust:
> > +    $ref: /schemas/types.yaml#/definitions/uint8-array
> > +    description: |
> > +      The Widevine root of trust secret. Used to sign the widevine
> > +      request in OP-TEE. The length should be 32 bytes. The value
> > +      is an ECC NIST P-256 scalar.
> > +      For more information, please reference the G.1.2 section:
> > +      https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.80=
0-186.pdf
> > +
> > +  root-of-trust-cert:
> > +    $ref: /schemas/types.yaml#/definitions/uint8-array
> > +    description: |
> > +      The X.509 certificate of the Widevine root of trust on this
> > +      device. Used to provision the device status with the Widevine
> > +      server in OP-TEE.
> > +      For more information, please reference:
> > +      https://www.itu.int/rec/T-REC-X.509
> > +
> > +required:
> > +  - compatible
> > +  - hardware-unique-key
> > +  - root-of-trust
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |+
>
> Why + ?

The extra "+" will be removed in the next patch.

>
> > +    options {
>
> There is no such node as "options".

This is a new node that was suggested in this thread:
https://www.spinics.net/lists/devicetree-spec/msg01195.html

>
>
> Best regards,
> Krzysztof
>

Thanks,
Yi

