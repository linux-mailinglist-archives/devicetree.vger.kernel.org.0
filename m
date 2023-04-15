Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8326E31D9
	for <lists+devicetree@lfdr.de>; Sat, 15 Apr 2023 16:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjDOOgl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Apr 2023 10:36:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjDOOgl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Apr 2023 10:36:41 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4E724C22
        for <devicetree@vger.kernel.org>; Sat, 15 Apr 2023 07:36:39 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id c9so13945351ejz.1
        for <devicetree@vger.kernel.org>; Sat, 15 Apr 2023 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=elearningbenefits-com.20221208.gappssmtp.com; s=20221208; t=1681569398; x=1684161398;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FCc+aPGwbR8VbRgg2YiEKQ55yVGbmk/dWlTuIErptoA=;
        b=su63NeGTaOW0CLRExKFqRX7/ZIrjYTQeE8xQjOYI9EjG4p8micTCnHG8vWbxP44mdB
         uOKWm6wUnnAbqx+R4guXYHrf+1CXgCvH7ruQ0m7Xqi8BNssULal9ZojzeLjTL1wVCvSf
         XjXrkLrT+RjS19k4VA8jJdRyFdxobhAhD3Nk6iMZ6U/ghwlMg+v+uNJLIBUkA0OKxLpB
         BzE7vNndPn3mD+RnHdiwZ1gbFHDXnBzRkV4NVN/FznRlmwYcT6ZXfPHvxrMMEnibdCQ3
         FvIdDzdgIxmplTXheNrExDtI2d9TgGIQMc5aW5mBdD4sZAZG9WoJ9ffdBwn4TO23iu3e
         t4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681569398; x=1684161398;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCc+aPGwbR8VbRgg2YiEKQ55yVGbmk/dWlTuIErptoA=;
        b=FEHXD/1zpmbKCLs8wnwjajtr7bo5QogZr0CAxgJGjNj0+7vWco8asVAIVhMZqDJFjH
         HfC4mdd4619zTGmdQ6vVldScQR20jmK5KhNU9iN0P3JHfce1plaXQSoL5wt70iDHjXGN
         32OtsPaiml9JWKaWma6Ys/hONjbsPMSDFP1i21VW0RYNL9+FLxGvyO6ibyHzRWCTDsJZ
         sl692pQq2IMLjm8ACp0nk3VWneudL7k57KLrVbrX4vo6BOTElsTLiLKGJBODtgnW8am+
         yOb5NLis3QI7FxAbn8RajMz6qyLXg2QZVT1ohHUOTOKYgO2iDpOkhfoWFrtfbIOgMf8M
         j3Hw==
X-Gm-Message-State: AAQBX9f3c41c13cbVZ8CzhgWolHC6xpuXw2gf124VGy1p6ozUXgOlnyx
        yFpkhVPMai2vVhVzyVnZBELSI2HCsn8Hns62YsixUw==
X-Google-Smtp-Source: AKy350ZmsskWHYgt15k4PAhN9ggirYYU8z7VjdzJRejSkanQNmmTlOOCCWDjzQ4yvXSjndtgfhvLz3jx1eSfc7QZTdw=
X-Received: by 2002:a17:906:304a:b0:94e:dbf7:2dfe with SMTP id
 d10-20020a170906304a00b0094edbf72dfemr2064939ejd.11.1681569398397; Sat, 15
 Apr 2023 07:36:38 -0700 (PDT)
MIME-Version: 1.0
From:   Ada Perez <ada@elearningbenefits.com>
Date:   Sat, 15 Apr 2023 09:36:24 -0500
Message-ID: <CAKX08jWq4k6GQxLhhirmCc_9Aw7Ci=syi14ABQNAiA6VVSa3Jg@mail.gmail.com>
Subject: RE: NAB Show Attendees Data-List 2023
To:     Ada Perez <ada@elearningbenefits.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I hope you=E2=80=99re having a great week!

Would you be interested in the National Association of Broadcasters
Attendees Data List 2023?

No of Contacts:- 45,764
Cost: $ 1,874

Looking forward for your response,

Kind Regards,
Ada Perez
Marketing Coordinator
