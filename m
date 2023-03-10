Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C866B389C
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:30:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230416AbjCJIaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:30:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbjCJIaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:30:15 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7323AE9817
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:29:56 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-536c2a1cc07so84300987b3.5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678436995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICV7h+pf/rdMI7ysm0+yuoMHuqjwB0UAi1mmGinxoQw=;
        b=wwsKVggsgfCB8PI3WpaD0vy37rNiiEQaarXZf46/WQiCJVqegR/ZzRlbLrcqcjPDFr
         JMmWGlWxoVWXzEOZOGISruOE8Uv0LkzkOmjlR5Ai6ShLF3d8soKbNlLjvwaLPUmrv9xA
         vvYUBmiDOeVZdsrJEgCVxA7NlnuBE2XtcEqatypOOeKl31gz+ZKZk1QLFzpviWhRGBGG
         /sUaJI6k6BBSR2XXCyD451HnhhIjmQdrCfCMTchE/RlXjBOXh/yF+KhSO342gn1xe0Sb
         D+kWJwIGM7KZ7s6fjUWvosAJFeAjcH+ZFdxQLHSC4KYZdFaUrkIZ57m5wJvDNPfacZNS
         z+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678436995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICV7h+pf/rdMI7ysm0+yuoMHuqjwB0UAi1mmGinxoQw=;
        b=4fEEBiWOrAausah7t1vi8mXIPm5GnP+/CQa97b1oXByikmgGRqXDb344CAkQe3OZpt
         AU+nZiRKk5O6mRqYk9LkDKy5OLaT5PXIzNSO5x1A4K/vzxDY7XoEkyPml62BMaOvoI0w
         Oq4S6zW75Qg5lUBRTLMaHDfMoaQuR7cIy3r+07uYjEB1Q+EYQykQKbFHjLSOi8ifBdkV
         qDW3jGeuOXEJHrV8bw28CqefonuDpQS1C/CYXT4J4hGp7/oXKjQAvqNPWShO8Qxv2HBC
         WakSzKHe1ipjd5vggVZDjrr2YB3mwuoJwyESfMYk1DER3ZPwOa7DoZRM2zac+zh+LInZ
         RPFw==
X-Gm-Message-State: AO0yUKUsgJYv2ihGJoWVVGovo8FGWZyUlpc2lvCJMJarN61VHj7v3Uw6
        FTDMPQS/+7+FwA7lCiwpJEw94wS4wW8KQW3Gyu5OMw==
X-Google-Smtp-Source: AK7set/4BTgYluz28No6CAZL3nYPwWvQ+rrktL8qCi6XHRkSqmyDjnFzWioP1GfzMfc4UN9JxUKLnfoVJjBU3uSSYI4=
X-Received: by 2002:a81:4317:0:b0:52e:dddf:82b9 with SMTP id
 q23-20020a814317000000b0052edddf82b9mr16336442ywa.10.1678436995632; Fri, 10
 Mar 2023 00:29:55 -0800 (PST)
MIME-Version: 1.0
References: <20230309225041.477440-1-sre@kernel.org> <20230309225041.477440-8-sre@kernel.org>
In-Reply-To: <20230309225041.477440-8-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 09:29:44 +0100
Message-ID: <CACRpkdZc_=C09tVSMFEfhCp4tgbYsDvtKe4w9QCyXz4Z4936ug@mail.gmail.com>
Subject: Re: [PATCHv1 07/11] power: supply: generic-adc-battery: drop memory
 alloc error message
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 11:50=E2=80=AFPM Sebastian Reichel <sre@kernel.org> =
wrote:

> Error printing happens automatically for memory allocation problems.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
