Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC1524EEA78
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 11:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344601AbiDAJee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 05:34:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344600AbiDAJed (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 05:34:33 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27D026A97F
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 02:32:44 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id kl29so1600149qvb.2
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 02:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MicAAIxYy/iDzT2iR5+kPbLoF8E6ss/329hg63ZuCOU=;
        b=3CnCTumz9YY76lxgWN2UlTVuzhev3Nna6J9Du2HqvA02Ij7ZZAjLKRk12K5FieougC
         d5Zn5GbFenpld2+RH3IV09sfmWtBZyk1Xi9A5PPqT8XBxUS4Hm27jFj+tIRNbIMTOuCn
         DPvka0Ye9GhRE0FfJMhXRxRE54vxK2VkbEkY9dPdmEeTQvKxlTdwMYaFo7/SG8p+d/0W
         8AGA75haiy9s12RjV6772ct/rs/eS23jKFaTL26ya6TVYy+VkYskp6iAsh0MTs8ffZMv
         CB0qHW21RXJLAHtsWEQTVIBYi0Qlnrs2d51fNiVgvgUGiA8oQBDRln13hNzk+D4yc313
         29aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MicAAIxYy/iDzT2iR5+kPbLoF8E6ss/329hg63ZuCOU=;
        b=6qEg8jNRzsN4ErnEHUDhicuk/hqX26BMkCoYdQefrh/T3IpiCr0CtAoPz2gNWcXZGb
         24NsqtW/MWSi5qvyzRdT+N2oS8hPcNbdvfAyfFYgjRD08JPIpE7O6WQJ/dSQUCA4+7UX
         eqa43MFwJOS3pN2B9SCbW4redQc90+GyZ+HlN5jynr2lFcllA2tjEt5/nFvnjj3KGXns
         H8Mq5M9sV1ewZw5V/dDG8rXua0sAht9Kpg1E2rB6m7+aY5Ae/f2U+2XSNknhj/eYbhka
         yME8fiquU+hYn8TX/fIEWh3q1jSQZAwbkZDrQEF2n05eppZiqakdiRb9NMHoHyftmRAn
         tAlw==
X-Gm-Message-State: AOAM5301MPct9wmbJS2FISsTQZDx4qT5GTtMNYoyzJ1URuX+lGWNR28Q
        g0EQtpi8cVojbuZQvsyrsbeBnwlwrbsUStPWk4n5lg==
X-Google-Smtp-Source: ABdhPJxMrWFRgnJ0HABbALsyEWn++3TYT3GlrWCdJTKoJ5qhP66rEVIDTbtidg6sinbHg72xQektuQEkP9W4JCYNA8A=
X-Received: by 2002:ad4:4eaf:0:b0:441:7ff6:f639 with SMTP id
 ed15-20020ad44eaf000000b004417ff6f639mr7098344qvb.73.1648805564076; Fri, 01
 Apr 2022 02:32:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220330190846.13997-1-wens@kernel.org> <20220330190846.13997-3-wens@kernel.org>
In-Reply-To: <20220330190846.13997-3-wens@kernel.org>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Fri, 1 Apr 2022 11:32:33 +0200
Message-ID: <CABxcv==csvqsxM46ce2LecDh4E-UxxD2DG+3E-hCFoyrdtRv7A@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: ssd1307fb: Add entry for SINO
 WEALTH SH1106
To:     Chen-Yu Tsai <wens@kernel.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Chen-Yu,

Thanks a lot for your patch.

On Wed, Mar 30, 2022 at 9:09 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> The SINO WEALTH SH1106 is an OLED display driver that is somewhat
> compatible with the SSD1306. It supports a slightly wider display,
> at 132 instead of 128 pixels. The basic commands are the same, but
> the SH1106 doesn't support the horizontal or vertical address modes.
>
> Add a compatible string for it.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> index 9baafd0c42dd..1ac016a2d847 100644
> --- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> @@ -13,6 +13,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - sinowealth,sh1106-i2c

I like that you didn't include a "fb" suffix for this, the existing
ones are cargo culting from the previous fbdev driver to make existing
DTBs compatible with the DRM driver.

I've been thinking if I should post a patch to compatible strings
without the "fb" and mark the current ones as deprecated...

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
Javier
