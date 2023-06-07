Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EFC272547C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 08:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237478AbjFGGkW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 02:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237012AbjFGGkQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 02:40:16 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EE9E172B
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 23:40:15 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-565c3aa9e82so79931647b3.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 23:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1686120015; x=1688712015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9d2sCd7ah2vbojw+2oUIoDVwhMBRN5y5qh24H2kySsU=;
        b=f0RZdEMQ464ceL/uRZ10D3Eig8SLZ9Ww3zWyqBRJvU9jMbPmnw4KZw0aCajmu5ElKD
         IlC/f7cx6mivVp7ryDID9C6k1iebxdKMJ8zYKQqeiKdzFEmn065WdfBBMoHJgRR3H6t4
         mzKaZve8nW/ROna1hFKTqqkAxuAMflmTUNOiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686120015; x=1688712015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9d2sCd7ah2vbojw+2oUIoDVwhMBRN5y5qh24H2kySsU=;
        b=QaNP+hYf8dgzkjrMLx4aTFOD93hS1yDN9lga+vlb9HfPbNSrtYFenc42pN3eiipoee
         UI1m/hISmK5gJT/92AlFPVb4SGZaGj1NVkQG4AFEjosJ+QRYE1MvQjXey1mOYmb6/F9N
         6flOtmyh/7b+WpGIG98vXfWhqO2nbjnAh/n6CuXjkH4e2XoSIA6yHWQ3aRV3lbMJb6D+
         pbK0y1w9SPaOeeHvFnRlsyFp5fWsCZeSORBL47KQJjEeGN+RmP9nryORFjqZvGBqoRJv
         ZEolzmiMXgSJ2E+2h8I0bYGkDWTYFNkTYYtUn4LWT0DZLrY6uYq2glq8F6oeTYIJm1Td
         oFlQ==
X-Gm-Message-State: AC+VfDz5dg0hHdv/xG0BcTRCkKm9q/tLdXwRw8xHaUdMT5/unUGnEruP
        KJ8dJiJCI4TTt2OQicyUOlaI3RUqNEkOs2hN9sLYmQ==
X-Google-Smtp-Source: ACHHUZ4FcSqI9UJuhz5QJp3BxxWbzaB69qaQ0llUyrzZcvr85u9WKmZk2Gw3vKaFZgAl6y6Ws+AbiDt3xWboKEU4CHM=
X-Received: by 2002:a0d:d552:0:b0:566:c47:d06a with SMTP id
 x79-20020a0dd552000000b005660c47d06amr5357912ywd.13.1686120014887; Tue, 06
 Jun 2023 23:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230607063139.621351-1-dario.binacchi@amarulasolutions.com> <20230607063139.621351-5-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20230607063139.621351-5-dario.binacchi@amarulasolutions.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 7 Jun 2023 12:10:03 +0530
Message-ID: <CAMty3ZA-8zyzqzjOehKa1=zE+GoMw8j2NbgZuythAafSjHVczw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 4/6] dt-bindings: display: simple: add Rocktech RK043FN48H
To:     Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc:     linux-kernel@vger.kernel.org,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        michael@amarulasolutions.com,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 7, 2023 at 12:01=E2=80=AFPM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:
>
> Add compatible to panel-simple for Rocktech Displays Limited
> RK043FN48H 4.3" 480x272 LCD-TFT panel.
>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
