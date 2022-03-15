Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FCCE4D91E5
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 02:02:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244834AbiCOBDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 21:03:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233143AbiCOBDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 21:03:19 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23A0A44743
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:02:09 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-2dbd97f9bfcso184693467b3.9
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dj3kdvWmxS8AGnsPW4TBoORJlW+RrMOKgnC3qGzFUZM=;
        b=sRgDbfvHoiIHNMr3YpZkrnu/DUbiHWgV6Vc4RdDx1Yw4bg69fghgGyRiadSz/vKbHO
         4nmj1Xl333paYR4zkRWj0cJUDzXuJ0ig3wHO2FCbn/LArgcWpN9NvrQOxb4I6l/A4ULc
         SNxxvCxGQPqv6b9fpeKB/6bq+4+xBF1uyB6aygrew1pC0ka5rqKt2b6OoEQynkWjun3y
         lbeIZd7uhNIBi4mGuQdWdplKo7zOAFEP13DPtRKVTPOaznsncBWbTbcwS37DZnrI2OZ7
         oRL12f8u7mvmIIjfdNGe8kLmZrloyxKIxpPcS3Vd51QGPyj4Q5Tiu9KFBFg09cPAWwxo
         dgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dj3kdvWmxS8AGnsPW4TBoORJlW+RrMOKgnC3qGzFUZM=;
        b=DCm9GoIMjbONsEwM6qwaUwfqYjgT2SGUU5isdKNhv60xIy7IH7kZMR5RVW7/Uguf+3
         Sr2hKRhtU+RODN0eJwBTZ01tnigBIW8SWibXOqZ4jElSm41vIhwM7tAEzoPRfN5ZTZb9
         DTqFtcup0pwudBQANlCT3qmvF2jQVA9jz6wHFx7gI0C81qoye4XD73JITU61cDtFZaE0
         s5SE+SmZq5kfEkycVHNwHto4fH9nH8zXAuTXTT+EU4lH12HJcHj/6+pFzzgQTkxxDv2Z
         zgAZbVtj2NfcFnXVhomHvqz8ez/+KlM8JzY3fWe+3E5vOKvpfeTxfodhWpa9aT77GDTu
         aazQ==
X-Gm-Message-State: AOAM531pAhVLyQHZGY081g7d9SViUADVOjRjVNeDKMDHNrL6fvncgWsZ
        n595JOXgSKyMBD/jA3NBGoOZx1tJhbmV6xhXBzheLw==
X-Google-Smtp-Source: ABdhPJysj4/E0AFd73Ea7gSo5GljRt/2BcdAeNJkno4apCGTlekm7vZ52R3o5xvgnj4UYCKxWqx5ZX3HsiTOLwVrgUs=
X-Received: by 2002:a81:1182:0:b0:2dc:4e58:da41 with SMTP id
 124-20020a811182000000b002dc4e58da41mr21946789ywr.268.1647306128379; Mon, 14
 Mar 2022 18:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220223174215.17838-1-a-m1@ti.com>
In-Reply-To: <20220223174215.17838-1-a-m1@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 02:01:57 +0100
Message-ID: <CACRpkdbj2B90-RE2XKQJ5qEj1hZQA-u=vUu2vpXwNqQLf_kaPg@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: gpio: Convert TI TPIC2810 GPIO Controller
 bindings to YAML
To:     Aparna M <a-m1@ti.com>
Cc:     a-govindraju@ti.com, robh+dt@kernel.org, praneeth@ti.com,
        grygorii.strashko@ti.com, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, bgolaszewski@baylibre.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 23, 2022 at 6:42 PM Aparna M <a-m1@ti.com> wrote:

> Convert gpio-tpic2810 bindings to yaml format and remove outdated
> bindings in .txt format.
>
> Signed-off-by: Aparna M <a-m1@ti.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
