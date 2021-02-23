Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB457322D06
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 16:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbhBWPAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 10:00:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231723AbhBWPA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 10:00:29 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DCA2C06174A
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 06:59:49 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id t25so12516634pga.2
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 06:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TPWEywY+7RrfQbDRMsLObI9Lz4l7g81hZ8ntaurd66Q=;
        b=lbbRCJqlfccsjStUNQy8nhqxYofLITmpfBAADMw4vOkRyawXkjP+v15BH5BB/qE5EV
         /9akhT1BCeZei8qQMvZb1ph5tLwtZqGy3u3w82MT+F836ZGXmHRM+bnmXZAPKoE99huv
         9xRYX4OPlXgF/YCnQhd7Ad1ASEjTjjKouX7H4b1HZuFRM2I8epUo/1IFI1zgh4dO/FPN
         gh5wnyY3chjcuuW9Vo/hiHCULBBq4him8f4pbgNVCdMdZc7Z4FtkjxctWzjzC3/T03VZ
         jS1KnTd+b6DxWnksUcDfRwHI95N03AYO5UKKZC4Q6Lg8qxooDak/FaZlrD3cFft5VqMe
         7sQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TPWEywY+7RrfQbDRMsLObI9Lz4l7g81hZ8ntaurd66Q=;
        b=L9SZVH5wGoKHJA+kg+IoeTwMp/R1tyhXDCfahBvypYpXfsaYjNgPYE1FGjlfaWk6VN
         nDDONe0xuDmqJrGPOz7mXXLJeHETguz/Q+j5A+nRS5/AkZyKWCvNofsGhCs7wTWCwV4v
         TZFmWPB/QvaVMArIg0QUUZI5gQnYajIGt8Q1uMKqFdUkCU1p+Ra3D+ymuJkUAkrC4hKA
         D55GhihnGNz4kxbBKYeFKMdkhZH1z4YLgtAdXTwslHd/q/npkZd5cbeu7HueOvC8Y+GJ
         MaGEVrtlGT4lJ69xPs3EVVFromPmlM6AR8ywytkeWEBpYvmB3fTRg8WgTKQhFp231LEX
         +McA==
X-Gm-Message-State: AOAM531/Lwb5tWcvAI3UUCSGPPo7JFRc2i+y+ANVmI57CH8J2lYVNHDZ
        3C0HrT1G1Za8jC33+03JVFo/kJW9DY7DfS0bgjzsUR0C2esUhA==
X-Google-Smtp-Source: ABdhPJx7k9bw5zaosBrKWi8wkAKNteucUQHNyLik7bVbAEcWampxkTVMmg57ff2wzNQ0TIL+9tQQibeUmtIw7ZfVhHU=
X-Received: by 2002:a63:6547:: with SMTP id z68mr21393175pgb.120.1614092388836;
 Tue, 23 Feb 2021 06:59:48 -0800 (PST)
MIME-Version: 1.0
References: <20210220060811.2500081-1-hsinyi@chromium.org>
In-Reply-To: <20210220060811.2500081-1-hsinyi@chromium.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 23 Feb 2021 15:59:37 +0100
Message-ID: <CAG3jFyvRn7zmk0tY70VMkh0xPFaSjYcF4PreTFjf8xj8VXHCVA@mail.gmail.com>
Subject: Re: [RESEND v3 1/2] dt-bindings: drm/bridge: anx7625: Add power supplies
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Xin Ji <xji@analogixsemi.com>, David Airlie <airlied@linux.ie>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Hsin-Yi,

Thanks for the patch, and sorry about the delays in reviewing this.

This patch does not apply to the drm-misc/for-linux-next branch due to
some other changes having been merged.

On Sat, 20 Feb 2021 at 07:10, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> anx7625 requires 3 power supply regulators.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/display/bridge/analogix,anx7625.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> index 60585a4fc22bc..3ae97d9523e56 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> @@ -34,6 +34,15 @@ properties:
>      description: used for reset chip control, RESET_N pin B7.
>      maxItems: 1
>
> +  vdd10-supply:
> +    description: Regulator that provides the supply 1.0V power.
> +
> +  vdd18-supply:
> +    description: Regulator that provides the supply 1.8V power.
> +
> +  vdd33-supply:
> +    description: Regulator that provides the supply 3.3V power.
> +

This chunk below has seen some changes.

With this patch fixed, feel free to add my r-b.
Reviewed-by: Robert Foss <robert.foss@linaro.org>

>    ports:
>      type: object
>
> @@ -55,6 +64,9 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - vdd10-supply
> +  - vdd18-supply
> +  - vdd33-supply
>    - ports
>
>  additionalProperties: false
> @@ -72,6 +84,9 @@ examples:
>              reg = <0x58>;
>              enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
>              reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> +            vdd10-supply = <&pp1000_mipibrdg>;
> +            vdd18-supply = <&pp1800_mipibrdg>;
> +            vdd33-supply = <&pp3300_mipibrdg>;
>
>              ports {
>                  #address-cells = <1>;
> --
> 2.30.0.617.g56c4b15f3c-goog
>
