Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4484279D6AE
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 18:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234829AbjILQrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 12:47:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232131AbjILQrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 12:47:11 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 125B5115
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:47:08 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-68fc94307bfso489898b3a.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694537227; x=1695142027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AjEUnMqb9T3eAGZeBOyL4dJaeqhy87pa7WJr/fbvIo=;
        b=XymAF06vQ2Ui/LOejCS8WedHC22e2fSpdr3EbTpN+rp8JALDa93O3HY83vI3kTR9Io
         zP3A7qacsT243e0QFMR7R0HOaYJIg9ZTmSQ7rJ6S6xYizcWEDYQnI2jQPDQQyiV9mPN0
         wJTKdImp7C6qy5L4w6183TYDh6+JY0gHsudMjHK2UuV3ZlfVSN/4x8N6AKCL6cHnHKRf
         jLj/8/0Lm0Lc5IXoI/sVBh2nMxNguIFaQXMugpUZtlfp7y0rdJzZlBojzKgI66eHkMkm
         EWc7V/Wtw5byQpM0Zdes2h8IS+TK9LAOesBoFGU0i1tTuMpED3LHvjBak5PnSFdDj6LO
         AZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694537227; x=1695142027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AjEUnMqb9T3eAGZeBOyL4dJaeqhy87pa7WJr/fbvIo=;
        b=cCkuWXyyedcLAFW9JQEYChYVKfL5Tc/QJSsi1JtR1iRRjgOxKQ/hSi8q3ryBEA2/a1
         8KLZdAhftH9wne9ZMpyxvLLKb+uvas3SdC0/qAgxbMODx7RnJnjeMmCj49KtZ796puFM
         fUDVzKakbaXlHsJ8IZe30V+DLwzJm58eu+WgnsrzrXx55VKW6p2CgjIgAT2j8dSPWCzF
         wcyFtvPYq9m4yYru1rbg4gAfuMIa7gZBicBtG7ejv6nsVPV0NOQVao+ZU9NFe58F5lSv
         RGXjxHFjoqJcPK/kEXSwo3vDcnRupMF4coXOV7vLdWeEToZNaZl169xzvyVsdhGgDXDj
         /cKQ==
X-Gm-Message-State: AOJu0YzOmoj8PnHriUiKEiB/+TBi2QGLf722eNYtas0RY2L7tCONAFIh
        snE6boazWweVvOPnscTcF/Xm5YbUkQL6D8g9yl0=
X-Google-Smtp-Source: AGHT+IGYSD9D36mf2qCBLoTalbKI1/aE/yMUluDoaukdnp913qAN6xpbRnnqqVuzsgFM1PqDIeXMeXfHqamV70kTtpY=
X-Received: by 2002:a05:6a21:9983:b0:136:f3ef:4d2 with SMTP id
 ve3-20020a056a21998300b00136f3ef04d2mr17022744pzb.3.1694537227104; Tue, 12
 Sep 2023 09:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230912163810.1750488-1-festevam@gmail.com> <20230912163810.1750488-2-festevam@gmail.com>
In-Reply-To: <20230912163810.1750488-2-festevam@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 12 Sep 2023 13:46:55 -0300
Message-ID: <CAOMZO5B8fmWDXDWoCiPzxZx2zshoEPXqNL468_TvOGMqiFpHHA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: Remove JPEG clock-names
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 12, 2023 at 1:38=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> Per nxp,imx8-jpeg.yaml, the clock-names entry is not valid.
>
> Remove them.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Sorry, I missed adding imx8-ss-img in the Subject line.
