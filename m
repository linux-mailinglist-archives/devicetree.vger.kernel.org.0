Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F35F65E6883
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:35:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbiIVQfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230313AbiIVQfD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:35:03 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B199B2F039
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:35:01 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id u9so22336836ejy.5
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=80Ysi9BOZsUySgtl5w14oQyBL/DjQ2nqgskjrFp2JKY=;
        b=Rf0lLgIXWgX+pNVKvIfdMFHSwK8n4MRrg8lOYn4mYs0RStvSNUJolq7PD9kx6Ye+Vh
         no06ijhZ9UM00OyLJ6ER2BeaANafwHEHMY6xQsvbsSdhyhy2Cy57SB/cxL+hxvfJDZJs
         dV/zhPHh6AH9bFZu5TPA+YupsESJPwFFoTdlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=80Ysi9BOZsUySgtl5w14oQyBL/DjQ2nqgskjrFp2JKY=;
        b=PNhEf+ajnHgT3vUDVBYTHMCdE3f/Nr25nN+YDKsuXgVUYz/QMqHb70gF5FiAlj3fdA
         QONErmKlcWfQj07ZUVjKMigtuOj8yB8SO85ge6rWiyjaOVhQFiJIek4JNnYyjoifbahx
         mIYEdCOk9T4EEWOPSA7do1kSMKfsBIGv3Vu5Q1jZ+T5/MkUYGwyDSrEq2h0Fzu20j6sG
         xKgfDtKTjw4gVk1tIzqd94s07YA6x2gIJmQWvMfbwd8C5NIVQUf9Mhjdadir6p+RLza6
         SjZeF4hmCwJi6RgbUOMhdHzyOgan+5xqwyyB2ege/8RtAxHA8YqekqaZELneEO+mNb5m
         ipPQ==
X-Gm-Message-State: ACrzQf17KLFuTJeZBG5jABv+gVzyGmE++MoQlRzqneuSFAUKDKQCDAe3
        wAQzNZr3tOfYQL8woi42NMyUyjEIXlBv+tCZ
X-Google-Smtp-Source: AMsMyM5yoMuIYLfYN4PvWjjMGMSM50KwfHIac1RReaY4oftxLH7MeW5DGLyXuXMHL0iEHl2z2NmP1w==
X-Received: by 2002:a17:906:8a5a:b0:781:6a01:5ccc with SMTP id gx26-20020a1709068a5a00b007816a015cccmr3569318ejc.118.1663864499326;
        Thu, 22 Sep 2022 09:34:59 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id kw12-20020a170907770c00b0076ff600bf2csm2867330ejc.63.2022.09.22.09.34.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:34:57 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id o5so7167889wms.1
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:34:57 -0700 (PDT)
X-Received: by 2002:a05:600c:1e18:b0:3b3:b9f8:2186 with SMTP id
 ay24-20020a05600c1e1800b003b3b9f82186mr3148288wmb.151.1663864496688; Thu, 22
 Sep 2022 09:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220922101813.v4.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
 <20220922101813.v4.3.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
In-Reply-To: <20220922101813.v4.3.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Sep 2022 09:34:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WvagXMojeQJW-uzy59Q0m0oQpjopNwPkupDq4gGJoQgw@mail.gmail.com>
Message-ID: <CAD=FV=WvagXMojeQJW-uzy59Q0m0oQpjopNwPkupDq4gGJoQgw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: input: touchscreen: elants_i2c: Add
 eth3915n touchscreen chip
To:     Yunlong Jia <ecs.beijing2022@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        David Heidelberg <david@ixit.cz>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 22, 2022 at 3:23 AM Yunlong Jia <ecs.beijing2022@gmail.com> wrote:
>
> Add an elan touch screen chip eth3915n.
>
> Signed-off-by: Yunlong Jia <ecs.beijing2022@gmail.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

You should have left my Reviewed-by off in this case. I haven't
actually seen this patch. You could have possibly added "Suggested-by"
or just left me off entirely until I gave you the tag.


> ---
>
> (no changes since v1)

I probably would have added this in patman:

Series-changes: 4
-  eth3915n dt bindings added in v4.

Without that you get the "(no changes from v1)" which is always weird
since this patch is new for v4.


>  .../devicetree/bindings/input/touchscreen/elan,elants_i2c.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/elan,elants_i2c.yaml b/Documentation/devicetree/bindings/input/touchscreen/elan,elants_i2c.yaml
> index a9b53c2e6f0ab..d28625372f5ac 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/elan,elants_i2c.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/elan,elants_i2c.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - elan,ektf3624
>        - elan,ekth3500
> +      - elan,ekth3915

This is not quite right because for elan,ekth3915 you're expecting
device trees to have:

compatible = "elan,ekth3915", "elan,ekth3500"

In other words it's actually a 3915 but the 3500 driver should work
fine. I believe a reasonable syntax is:

  compatible:
    oneOf:
      - enum:
          - elan,ektf3624
          - elan,ekth3500
      - items:
          - const: elan,ekth3915
          - const: elan,ekth3500

-Doug
